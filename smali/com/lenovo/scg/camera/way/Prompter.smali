.class public Lcom/lenovo/scg/camera/way/Prompter;
.super Ljava/lang/Object;
.source "Prompter.java"


# static fields
.field private static final MSG_REMOVE_MSG:I = 0x0

.field private static final REMOVE_MSG_DELAY:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "Prompter"

.field private static mPromter:Lcom/lenovo/scg/camera/way/Prompter;


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mPrompterRootView:Landroid/widget/RelativeLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/lenovo/scg/camera/way/Prompter;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/way/Prompter;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/way/Prompter;->mPromter:Lcom/lenovo/scg/camera/way/Prompter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mContext:Landroid/app/Activity;

    .line 31
    iput-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mPrompterRootView:Landroid/widget/RelativeLayout;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mEnable:Z

    .line 38
    new-instance v0, Lcom/lenovo/scg/camera/way/Prompter$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/way/Prompter$1;-><init>(Lcom/lenovo/scg/camera/way/Prompter;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/way/Prompter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/Prompter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/way/Prompter;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/lenovo/scg/camera/way/Prompter;->mPromter:Lcom/lenovo/scg/camera/way/Prompter;

    return-object v0
.end method

.method private getPrompterRootView()Landroid/widget/RelativeLayout;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 107
    const-string v1, "Prompter"

    const-string v2, "getPrompterRootView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/Prompter;->mPrompterRootView:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/Prompter;->mContext:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 110
    const-string v1, "Prompter"

    const-string v2, "getPrompterRootView(): mContext == null && return null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/Prompter;->mContext:Landroid/app/Activity;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mContext:Landroid/app/Activity;

    const v1, 0x7f10015a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mPrompterRootView:Landroid/widget/RelativeLayout;

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mPrompterRootView:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 116
    :cond_2
    const-string v1, "Prompter"

    const-string v2, "getPrompterRootView(): context is not Activity && return null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initTextView()V
    .locals 4

    .prologue
    .line 124
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/Prompter;->mContext:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 125
    const-string v2, "Prompter"

    const-string v3, "initTextView(): mContext == null && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/Prompter;->mContext:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    .line 129
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/Prompter;->getPrompterRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 130
    .local v0, "mLayout":Landroid/widget/RelativeLayout;
    if-nez v0, :cond_1

    .line 131
    const-string v2, "Prompter"

    const-string v3, "initTextView() mLayout == null && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 135
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 136
    .local v1, "mps":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 137
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 138
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 139
    const/16 v2, 0x64

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 141
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    const v3, 0x55ffff00

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 142
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/Prompter;->mContext:Landroid/app/Activity;

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mPrompterRootView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mPrompterRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 102
    :cond_0
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/Prompter;->mPrompterRootView:Landroid/widget/RelativeLayout;

    .line 103
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    .line 104
    return-void
.end method

.method public prompt(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mEnable:Z

    if-nez v0, :cond_0

    .line 78
    const-string v0, "Prompter"

    const-string/jumbo v1, "prompt(): !mEnable && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/Prompter;->initTextView()V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 88
    const-string v0, "Prompter"

    const-string/jumbo v1, "prompt(): mTextView init fail && return "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/Prompter;->mContext:Landroid/app/Activity;

    .line 63
    return-void
.end method

.method public setPrompterEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 66
    const-string v0, "Prompter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPrompterEnable -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/Prompter;->mEnable:Z

    .line 68
    return-void
.end method
