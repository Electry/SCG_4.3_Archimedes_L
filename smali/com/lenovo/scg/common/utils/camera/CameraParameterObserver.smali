.class public Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;
.super Ljava/lang/Object;
.source "CameraParameterObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;,
        Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;
    }
.end annotation


# static fields
.field public static isOn:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private formatter:Ljava/text/SimpleDateFormat;

.field private mHistory:Ljava/lang/String;

.field private mMethodName:Ljava/lang/String;

.field private mOldParametersString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->isOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mOldParametersString:Ljava/lang/String;

    .line 19
    const-string v0, "CameraParameterObserver"

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mHistory:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mMethodName:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss:sss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->formatter:Ljava/text/SimpleDateFormat;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mHistory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mHistory:Ljava/lang/String;

    return-object p1
.end method

.method private saveInfo2File()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;-><init>(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;)V

    .line 113
    .local v0, "mSaveParameters2FileThread":Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;
    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_1

    .line 114
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;

    .end local v0    # "mSaveParameters2FileThread":Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;
    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;-><init>(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;)V

    .line 115
    .restart local v0    # "mSaveParameters2FileThread":Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;
    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;->start()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;->start()V

    goto :goto_0
.end method

.method private saveMethodName2File(Ljava/lang/String;)V
    .locals 3
    .param p1, "mMethodName"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;-><init>(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;)V

    .line 84
    .local v0, "mSaveMethodName2FileThread":Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;
    iput-object p1, v0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;->name:Ljava/lang/String;

    .line 85
    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_1

    .line 86
    new-instance v0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;

    .end local v0    # "mSaveMethodName2FileThread":Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;
    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;-><init>(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;)V

    .line 87
    .restart local v0    # "mSaveMethodName2FileThread":Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;
    iput-object p1, v0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;->name:Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;->start()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public onCameraParametersChanged(Ljava/lang/String;)V
    .locals 7
    .param p1, "mNewParam"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-boolean v4, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->isOn:Z

    if-nez v4, :cond_0

    .line 67
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mOldParametersString:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mOldParametersString:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_1
    const-string v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "mNewStrings":[Ljava/lang/String;
    array-length v1, v3

    .line 54
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 55
    iget-object v4, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mOldParametersString:Ljava/lang/String;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 56
    iget-object v4, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mHistory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mHistory:Ljava/lang/String;

    .line 54
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mHistory:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 61
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 62
    .local v2, "mDate":Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mHistory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "---------------------------------------(setParameters)\u4ee5\u4e0a\u64cd\u4f5c\u8bb0\u5f55\u65f6\u95f4: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mHistory:Ljava/lang/String;

    .line 64
    .end local v2    # "mDate":Ljava/util/Date;
    :cond_4
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mOldParametersString:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->saveInfo2File()V

    goto/16 :goto_0
.end method

.method public onMethodCalled(Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-boolean v1, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->isOn:Z

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 74
    .local v0, "mDate":Ljava/util/Date;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()\r\n---------------------------------------\u4ee5\u4e0a\u64cd\u4f5c\u8bb0\u5f55\u65f6\u95f4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->saveMethodName2File(Ljava/lang/String;)V

    goto :goto_0
.end method
