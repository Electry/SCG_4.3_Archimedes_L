.class public Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;
.super Ljava/lang/Object;
.source "SCGInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;
    }
.end annotation


# static fields
.field private static COMMON_DELAY_TIME:I = 0x0

.field private static LOCK_TIME_OUT:I = 0x0

.field private static final LOCK_TIME_OUT_DEFAULT:I = 0x1388

.field private static MAX_DELAY_TIME:I = 0x0

.field private static final MSG_QUIT:I = 0x0

.field private static final MSG_SHOW_HINT:I = 0x3

.field private static final MSG_UNLOCK:I = 0x1

.field private static final MSG_UNLOCK_TIMEOUT:I = 0x2

.field private static mContext:Landroid/content/Context;

.field private static mCountHandler:Landroid/os/Handler;

.field private static mInfo:Ljava/lang/String;

.field private static mInputLocked:Z

.field private static mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

.field private static mLock:[B

.field private static mTimeStartLock:J


# instance fields
.field private mHintToast:Landroid/widget/Toast;

.field private mRunnableCount:Ljava/lang/Runnable;

.field private mToast:Landroid/widget/Toast;

.field private mWndStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    sput-object v2, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    .line 29
    new-array v0, v1, [B

    sput-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mLock:[B

    .line 31
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInputLocked:Z

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInfo:Ljava/lang/String;

    .line 35
    sput v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->MAX_DELAY_TIME:I

    .line 39
    const/16 v0, 0x1388

    sput v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->LOCK_TIME_OUT:I

    .line 41
    const/16 v0, 0x64

    sput v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->COMMON_DELAY_TIME:I

    .line 43
    sput-object v2, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mCountHandler:Landroid/os/Handler;

    .line 53
    sput-object v2, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mContext:Landroid/content/Context;

    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mTimeStartLock:J

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v2, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mWndStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    .line 59
    new-instance v2, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;-><init>(Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mRunnableCount:Ljava/lang/Runnable;

    .line 296
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mToast:Landroid/widget/Toast;

    .line 298
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mHintToast:Landroid/widget/Toast;

    .line 121
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mRunnableCount:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 122
    .local v1, "td":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1    # "td":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInputLocked:Z

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;

    .prologue
    .line 25
    sput-object p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mCountHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->hideHint()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInputLocked:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 25
    sput-object p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->MAX_DELAY_TIME:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 25
    sput p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->LOCK_TIME_OUT:I

    return p0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->showHint()V

    return-void
.end method

.method private createListener(I)Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;
    .locals 1
    .param p1, "nDelayTime"    # I

    .prologue
    .line 359
    new-instance v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;-><init>(Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;I)V

    return-object v0
.end method

.method private delayUnlock()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 266
    sget-object v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mCountHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    sget-object v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mCountHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mCountHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget v3, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->MAX_DELAY_TIME:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 274
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInputLocked:Z

    goto :goto_0
.end method

.method public static getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    .line 145
    :goto_0
    return-object v0

    .line 136
    :cond_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mLock:[B

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    if-eqz v0, :cond_1

    .line 138
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    monitor-exit v1

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 141
    :cond_1
    :try_start_1
    const-string v0, "SCGInputFilter create instance"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    .line 143
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    goto :goto_0
.end method

.method private declared-synchronized hideHint()V
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mToast:Landroid/widget/Toast;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mHintToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mHintToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mHintToast:Landroid/widget/Toast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_1
    monitor-exit p0

    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized isInputLocked()Z
    .locals 2

    .prologue
    .line 228
    const-class v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInputLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized lockInput(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sInfo"    # Ljava/lang/String;

    .prologue
    .line 203
    const-class v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->COMMON_DELAY_TIME:I

    invoke-static {p0, v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized lockInput(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "sInfo"    # Ljava/lang/String;
    .param p1, "nLockTime"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 178
    const-class v2, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInputLocked:Z

    if-eqz v3, :cond_1

    .line 179
    sget-object v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mCountHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    sget-object v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const-string v1, "%s lockInput failed,input has been locked by %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInfo:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    .line 185
    :cond_1
    if-gez p1, :cond_2

    .line 186
    const/4 v0, 0x1

    :try_start_1
    const-string/jumbo v3, "the time value is out of range"

    invoke-static {v0, v3}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 188
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInputLocked:Z

    .line 189
    sput p1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->MAX_DELAY_TIME:I

    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 191
    sput-object p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInfo:Ljava/lang/String;

    .line 193
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    move-result-object v0

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->startTimeOutDetect()V

    .line 195
    const-string v0, "%s lockInput is ok, time=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    sget v5, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->MAX_DELAY_TIME:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mTimeStartLock:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 199
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    move-result-object v0

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->hideHint()V

    .line 340
    return-void
.end method

.method public static releaseInstance()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    const-string v0, "SCGInputFilter releaseInstance"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mCountHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    .line 155
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInputLocked:Z

    goto :goto_0
.end method

.method public static setMaxLockTimeOut(I)V
    .locals 1
    .param p0, "lMaxTime"    # I

    .prologue
    .line 245
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setTimeOut(I)V

    .line 246
    return-void
.end method

.method public static setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 343
    sget-object v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    if-eqz v1, :cond_0

    .line 344
    sget-object v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    sget v2, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->COMMON_DELAY_TIME:I

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->createListener(I)Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;

    move-result-object v0

    .line 345
    .local v0, "l":Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;
    invoke-virtual {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 347
    .end local v0    # "l":Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;
    :cond_0
    return-void
.end method

.method public static setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;I)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "nDelayTime"    # I

    .prologue
    .line 350
    sget-object v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    if-eqz v1, :cond_0

    .line 351
    sget-object v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInstance:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    invoke-direct {v1, p2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->createListener(I)Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;

    move-result-object v0

    .line 352
    .local v0, "l":Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;
    invoke-virtual {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 356
    .end local v0    # "l":Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string/jumbo v1, "setOnClickListener, mInstance = null, error-------------------------!"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTimeOut(I)V
    .locals 0
    .param p1, "lTimeOut"    # I

    .prologue
    .line 262
    sput p1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->LOCK_TIME_OUT:I

    .line 263
    return-void
.end method

.method private declared-synchronized showBusyHint()V
    .locals 3

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 318
    :cond_1
    :try_start_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mHintToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 320
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "\u7167\u7247\u751f\u6210\u4e2d\uff0c\u8bf7\u7a0d\u5019\uff0c\u8d85\u8fc7\uff15\u79d2\u4ecd\u4e0d\u8fd4\u56de\u9ebb\u70e6\u60a8\u627e\u5f00\u53d1\u53cd\u9988\u3002\u3002\u3002"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mHintToast:Landroid/widget/Toast;

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mHintToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized showHint()V
    .locals 3

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 304
    :cond_1
    :try_start_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 309
    :cond_2
    :try_start_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "\u6b63\u52aa\u529b\u5904\u7406\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mToast:Landroid/widget/Toast;

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static showTips()V
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    move-result-object v0

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->showBusyHint()V

    .line 233
    return-void
.end method

.method private startTimeOutDetect()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 280
    sget-object v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mCountHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    sget v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->LOCK_TIME_OUT:I

    int-to-long v2, v1

    .line 282
    .local v2, "lTimeOut":J
    sget v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->MAX_DELAY_TIME:I

    int-to-long v4, v1

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 283
    sget v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->MAX_DELAY_TIME:I

    sget v4, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->COMMON_DELAY_TIME:I

    add-int/2addr v1, v4

    int-to-long v2, v1

    .line 288
    :cond_0
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mCountHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 291
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInputLocked:Z

    goto :goto_0
.end method

.method public static varargs declared-synchronized unlockInput([Ljava/lang/String;)V
    .locals 2
    .param p0, "end"    # [Ljava/lang/String;

    .prologue
    .line 215
    const-class v1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->getInstance()Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    move-result-object v0

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->delayUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit v1

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getWindowStatus()Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mWndStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    sput-object p1, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mContext:Landroid/content/Context;

    .line 130
    return-void
.end method

.method public setWindowStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mWndStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    .line 160
    return-void
.end method
