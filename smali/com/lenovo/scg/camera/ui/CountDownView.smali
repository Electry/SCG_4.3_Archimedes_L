.class public Lcom/lenovo/scg/camera/ui/CountDownView;
.super Landroid/widget/FrameLayout;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/CountDownView$1;,
        Lcom/lenovo/scg/camera/ui/CountDownView$MainHandler;,
        Lcom/lenovo/scg/camera/ui/CountDownView$OnCountDownFinishedListener;
    }
.end annotation


# static fields
.field private static final SET_TIMER_TEXT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CAM_CountDownView"


# instance fields
.field private mBeepOnce:I

.field private mBeepTwice:I

.field private mCountDownAnim:Landroid/view/animation/Animation;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/lenovo/scg/camera/ui/CountDownView$OnCountDownFinishedListener;

.field private mPlaySound:Z

.field private mRemainingSecondsView:Landroid/widget/TextView;

.field private mRemainingSecs:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v3, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mRemainingSecs:I

    .line 58
    new-instance v0, Lcom/lenovo/scg/camera/ui/CountDownView$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/ui/CountDownView$MainHandler;-><init>(Lcom/lenovo/scg/camera/ui/CountDownView;Lcom/lenovo/scg/camera/ui/CountDownView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    .line 62
    const v0, 0x7f050012

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mCountDownAnim:Landroid/view/animation/Animation;

    .line 64
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    const v1, 0x7f080002

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mBeepOnce:I

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    const v1, 0x7f080003

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mBeepTwice:I

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/ui/CountDownView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/CountDownView;

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mRemainingSecs:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/ui/CountDownView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/CountDownView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/CountDownView;->remainingSecondsChanged(I)V

    return-void
.end method

.method private remainingSecondsChanged(I)V
    .locals 10
    .param p1, "newVal"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 79
    iput p1, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mRemainingSecs:I

    .line 80
    if-nez p1, :cond_0

    .line 82
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/CountDownView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mListener:Lcom/lenovo/scg/camera/ui/CountDownView$OnCountDownFinishedListener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/ui/CountDownView$OnCountDownFinishedListener;->onCountDownFinished()V

    .line 104
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v7, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 86
    .local v7, "locale":Ljava/util/Locale;
    const-string v0, "%d"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v7, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "localizedValue":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mCountDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mCountDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mPlaySound:Z

    if-eqz v0, :cond_1

    .line 95
    if-ne p1, v9, :cond_2

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mBeepTwice:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 102
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mBeepOnce:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mRemainingSecs:I

    if-lez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mRemainingSecs:I

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/CountDownView;->setVisibility(I)V

    .line 132
    :cond_0
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mRemainingSecs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 109
    const v0, 0x7f1003f0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/CountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    .line 110
    return-void
.end method

.method public setCountDownFinishedListener(Lcom/lenovo/scg/camera/ui/CountDownView$OnCountDownFinishedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/CountDownView$OnCountDownFinishedListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mListener:Lcom/lenovo/scg/camera/ui/CountDownView$OnCountDownFinishedListener;

    .line 114
    return-void
.end method

.method public startCountDown(IZ)V
    .locals 3
    .param p1, "sec"    # I
    .param p2, "playSound"    # Z

    .prologue
    .line 117
    if-gtz p1, :cond_0

    .line 118
    const-string v0, "CAM_CountDownView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input for countdown timer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/CountDownView;->setVisibility(I)V

    .line 122
    iput-boolean p2, p0, Lcom/lenovo/scg/camera/ui/CountDownView;->mPlaySound:Z

    .line 123
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/CountDownView;->remainingSecondsChanged(I)V

    goto :goto_0
.end method
