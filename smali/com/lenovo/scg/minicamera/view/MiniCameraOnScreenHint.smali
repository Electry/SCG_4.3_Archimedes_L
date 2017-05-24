.class public Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;
.super Ljava/lang/Object;
.source "MiniCameraOnScreenHint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnScreenHint"


# instance fields
.field private mGravity:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field private mHorizontalMargin:F

.field private mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShow:Ljava/lang/Runnable;

.field private mVerticalMargin:F

.field private mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;

.field private mX:I

.field private mY:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x51

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mGravity:I

    .line 44
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint$1;-><init>(Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mShow:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint$2;-><init>(Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mHide:Ljava/lang/Runnable;

    .line 58
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mWM:Landroid/view/WindowManager;

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OnScreenHint"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->handleHide()V

    return-void
.end method

.method private declared-synchronized handleHide()V
    .locals 2

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 160
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_1
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleShow()V
    .locals 4

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mNextView:Landroid/view/View;

    if-eq v1, v2, :cond_3

    .line 131
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->handleHide()V

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mNextView:Landroid/view/View;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mView:Landroid/view/View;

    .line 133
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mGravity:I

    .line 134
    .local v0, "gravity":I
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 135
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 138
    :cond_0
    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mVerticalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 144
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mHorizontalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v0    # "gravity":I
    :cond_3
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 98
    new-instance v1, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, "result":Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 107
    .local v0, "inflate":Landroid/view/LayoutInflater;
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method
