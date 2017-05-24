.class public Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;
.super Lcom/lenovo/scg/camera/tutorial/TutorialPage;
.source "TutorialPageTwo.java"


# static fields
.field private static final SHOW_NEXT_HI_IMAGE:I = 0x1


# instance fields
.field private mContentImageView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDoubleFingersIcon:Landroid/widget/ImageView;

.field private mHandView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHiIndex:I

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSingleClickIcon:Landroid/widget/ImageView;

.field private mSingleLongClickIcon:Landroid/widget/ImageView;

.field private mTextViewtutorialDetail:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPage;-><init>()V

    .line 38
    new-instance v0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo$1;-><init>(Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->showNextHiImage()V

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 60
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040194

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1009a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mRootView:Landroid/widget/RelativeLayout;

    .line 63
    const v2, 0x7f1009ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mSingleClickIcon:Landroid/widget/ImageView;

    .line 64
    const v2, 0x7f1009b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mSingleLongClickIcon:Landroid/widget/ImageView;

    .line 65
    const v2, 0x7f1009b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mDoubleFingersIcon:Landroid/widget/ImageView;

    .line 66
    const v2, 0x7f1009b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHandView:Landroid/widget/ImageView;

    .line 67
    const v2, 0x7f1009b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mContentImageView:Landroid/widget/ImageView;

    .line 68
    const v2, 0x7f1009ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mTextViewtutorialDetail:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    .line 69
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mTextViewtutorialDetail:Lcom/lenovo/scg/camera/tutorial/TutorialTextView;

    const v3, 0x3feb851f    # 1.84f

    const v4, 0x7f0f01f2

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/tutorial/TutorialTextView;->setParamater(FI)V

    .line 70
    return-void
.end method

.method private resetImage()V
    .locals 4

    .prologue
    const v3, 0x7f020998

    .line 95
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------------------mHiIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHiIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHiIndex:I

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mDoubleFingersIcon:Landroid/widget/ImageView;

    const v1, 0x7f02099d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mSingleClickIcon:Landroid/widget/ImageView;

    const v1, 0x7f0209a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHandView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mContentImageView:Landroid/widget/ImageView;

    const v1, 0x7f02099a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHiIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mSingleClickIcon:Landroid/widget/ImageView;

    const v1, 0x7f0209a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mSingleLongClickIcon:Landroid/widget/ImageView;

    const v1, 0x7f0209a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHandView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mContentImageView:Landroid/widget/ImageView;

    const v1, 0x7f02099b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 106
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHiIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mSingleLongClickIcon:Landroid/widget/ImageView;

    const v1, 0x7f0209a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mDoubleFingersIcon:Landroid/widget/ImageView;

    const v1, 0x7f02099e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHandView:Landroid/widget/ImageView;

    const v1, 0x7f0209a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mContentImageView:Landroid/widget/ImageView;

    const v1, 0x7f02099c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private showNextHiImage()V
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHiIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHiIndex:I

    .line 90
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->resetImage()V

    .line 91
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->startAnimation()V

    .line 92
    return-void
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    return-void
.end method


# virtual methods
.method public getPageRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public startAnim()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "jiaxiaowei"

    const-string v1, "TutorialPageTwo-----startAnim----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->startAnimation()V

    .line 81
    return-void
.end method

.method public stopAnim()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->mHiIndex:I

    .line 119
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialPageTwo;->resetImage()V

    .line 120
    return-void
.end method
