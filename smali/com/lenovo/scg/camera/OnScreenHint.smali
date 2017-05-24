.class public Lcom/lenovo/scg/camera/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# static fields
.field static final TAG:Ljava/lang/String; = "OnScreenHint"


# instance fields
.field mGravity:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShow:Ljava/lang/Runnable;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x51

    iput v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mGravity:I

    .line 60
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    .line 183
    new-instance v0, Lcom/lenovo/scg/camera/OnScreenHint$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/OnScreenHint$1;-><init>(Lcom/lenovo/scg/camera/OnScreenHint;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    .line 191
    new-instance v0, Lcom/lenovo/scg/camera/OnScreenHint$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/OnScreenHint$2;-><init>(Lcom/lenovo/scg/camera/OnScreenHint;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mHide:Ljava/lang/Runnable;

    .line 74
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mY:I

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x7f0a0061

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OnScreenHint"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/OnScreenHint;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/OnScreenHint;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lenovo/scg/camera/OnScreenHint;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/OnScreenHint;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/OnScreenHint;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lenovo/scg/camera/OnScreenHint;->handleHide()V

    return-void
.end method

.method private declared-synchronized handleHide()V
    .locals 2

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 179
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_1
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleShow()V
    .locals 5

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-eq v2, v3, :cond_3

    .line 145
    invoke-direct {p0}, Lcom/lenovo/scg/camera/OnScreenHint;->handleHide()V

    .line 146
    iget-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mNextView:Landroid/view/View;

    iput-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mView:Landroid/view/View;

    .line 147
    iget v1, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mGravity:I

    .line 148
    .local v1, "gravity":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 149
    and-int/lit8 v2, v1, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 150
    iget-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 152
    :cond_0
    and-int/lit8 v2, v1, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_1

    .line 153
    iget-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mX:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 156
    iget-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mY:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 157
    iget-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mVerticalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 158
    iget-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mHorizontalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 159
    iget-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 160
    iget-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .end local v1    # "gravity":I
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    .restart local v1    # "gravity":I
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    :try_start_2
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 143
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v1    # "gravity":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/lenovo/scg/camera/OnScreenHint;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    new-instance v1, Lcom/lenovo/scg/camera/OnScreenHint;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/OnScreenHint;-><init>(Landroid/content/Context;)V

    .line 115
    .local v1, "result":Lcom/lenovo/scg/camera/OnScreenHint;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 116
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v4, 0x7f040110

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 117
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f100367

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 118
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iput-object v3, v1, Lcom/lenovo/scg/camera/OnScreenHint;->mNextView:Landroid/view/View;

    .line 122
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mNextView:Landroid/view/View;

    const v2, 0x7f100367

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 136
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/camera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method
