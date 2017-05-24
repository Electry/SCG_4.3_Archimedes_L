.class public Lcom/lenovo/scg/camera/LightSensorEventListener;
.super Ljava/lang/Object;
.source "LightSensorEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static OFFSET_TIME:I


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mExecuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x2710

    sput v0, Lcom/lenovo/scg/camera/LightSensorEventListener;->OFFSET_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/lenovo/scg/camera/setting/SettingExecuter;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "executer"    # Lcom/lenovo/scg/camera/setting/SettingExecuter;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/LightSensorEventListener;->startTime:J

    .line 25
    iput-object p2, p0, Lcom/lenovo/scg/camera/LightSensorEventListener;->mExecuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/camera/LightSensorEventListener;->mContext:Landroid/app/Activity;

    .line 27
    return-void
.end method

.method private readSystemBrightnessMode(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 82
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, -0x1

    .line 84
    .local v2, "mode":I
    :try_start_0
    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 89
    :goto_0
    return v2

    .line 85
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 77
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LightSensorEventListener_onSensorChanged_LIGHT_SENSOR:  \u611f\u5149\u5f3a\u5ea6\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 34
    .local v0, "endTime":J
    iget-wide v4, p0, Lcom/lenovo/scg/camera/LightSensorEventListener;->startTime:J

    sub-long v4, v0, v4

    sget v6, Lcom/lenovo/scg/camera/LightSensorEventListener;->OFFSET_TIME:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/LightSensorEventListener;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/LightSensorEventListener;->readSystemBrightnessMode(Landroid/content/Context;)I

    move-result v3

    .line 39
    .local v3, "mode":I
    if-eqz v3, :cond_0

    .line 43
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    const/high16 v5, 0x447a0000    # 1000.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 45
    iget-object v4, p0, Lcom/lenovo/scg/camera/LightSensorEventListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 46
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/lenovo/scg/camera/LightSensorEventListener;->mExecuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    new-array v5, v8, [I

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateScreenBrightness([I)V

    .line 69
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    iput-wide v0, p0, Lcom/lenovo/scg/camera/LightSensorEventListener;->startTime:J

    goto :goto_0

    .line 54
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/LightSensorEventListener;->mExecuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    new-array v5, v9, [I

    const/4 v6, -0x1

    aput v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateScreenBrightness([I)V

    goto :goto_1
.end method
