.class public Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;
.super Ljava/lang/Object;
.source "LightnessExecuter.java"


# static fields
.field private static final LIGHTNESS_DEFAULT:I = 0xff

.field private static final LIGHTNESS_MODE:I = 0x0

.field private static final MSG_UPDATE_SCREEN_BRIGHTNESS:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "LightnessExecuter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mScreenBrightness:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter$1;-><init>(Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;->mHandler:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;->updateScreenBrightness()V

    return-void
.end method

.method private getScreenBrightness()I
    .locals 6

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "currentBrightnessValue":I
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 91
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 92
    const-string v3, "LightnessExecuter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getScreenBrightness currentBrightnessValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return v0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateScreenBrightness()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 61
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 65
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 66
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 72
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;->mScreenBrightness:F

    .line 74
    const-string v1, "LightnessExecuter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCameraBrightness set  screenBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    return-void
.end method


# virtual methods
.method public excuteUpdateScreenBrightness()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    return-void
.end method
