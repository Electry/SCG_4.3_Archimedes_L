.class public Lcom/lenovo/scg/camera/rewind/RewindView;
.super Landroid/widget/ImageView;
.source "RewindView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;
    }
.end annotation


# static fields
.field private static final MSG_INVALIDATE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "REwindView"


# instance fields
.field private mAnimDelay:J

.field private mAnimIvl:J

.field private mDrawingTimer:Ljava/util/Timer;

.field private mFaceRects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/lenovo/scg/camera/rewind/FaceRect;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mRectVisible:Z

.field private mTimerTask:Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/rewind/RewindView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/camera/rewind/RewindView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v2, 0xa

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mRectVisible:Z

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mFaceRects:Ljava/util/Vector;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mDrawingTimer:Ljava/util/Timer;

    .line 109
    iput-wide v2, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mAnimIvl:J

    .line 111
    iput-wide v2, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mAnimDelay:J

    .line 159
    new-instance v0, Lcom/lenovo/scg/camera/rewind/RewindView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/rewind/RewindView$1;-><init>(Lcom/lenovo/scg/camera/rewind/RewindView;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/rewind/RewindView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindView;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mRectVisible:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/rewind/RewindView;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mFaceRects:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/rewind/RewindView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private drawRects(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 51
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mRectVisible:Z

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/rewind/FaceRect;

    .line 53
    .local v1, "rect":Lcom/lenovo/scg/camera/rewind/FaceRect;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/rewind/FaceRect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 56
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "rect":Lcom/lenovo/scg/camera/rewind/FaceRect;
    :cond_0
    return-void
.end method


# virtual methods
.method public faceOnTouch(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "action"    # I

    .prologue
    .line 96
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/rewind/FaceRect;

    .line 97
    .local v1, "rect":Lcom/lenovo/scg/camera/rewind/FaceRect;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/rewind/FaceRect;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/rewind/RewindView;->stopDrawingThread()V

    .line 99
    if-nez p2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/rewind/FaceRect;->onTouch(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/rewind/RewindView;->invalidate()V

    goto :goto_0

    .line 99
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 103
    .end local v1    # "rect":Lcom/lenovo/scg/camera/rewind/FaceRect;
    :cond_2
    return-void
.end method

.method public flashRect()V
    .locals 4

    .prologue
    .line 80
    const-string v2, "REwindView"

    const-string v3, "flashRect"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/rewind/FaceRect;

    .line 82
    .local v1, "rect":Lcom/lenovo/scg/camera/rewind/FaceRect;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/rewind/FaceRect;->flash()V

    goto :goto_0

    .line 84
    .end local v1    # "rect":Lcom/lenovo/scg/camera/rewind/FaceRect;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/rewind/RewindView;->drawRects(Landroid/graphics/Canvas;)V

    .line 47
    return-void
.end method

.method public setFaceRects(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/lenovo/scg/camera/rewind/FaceRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "rects":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/camera/rewind/FaceRect;>;"
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mFaceRects:Ljava/util/Vector;

    .line 40
    return-void
.end method

.method public setOffsetScale(IIF)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "scale"    # F

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/rewind/RewindView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 89
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 90
    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 91
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/rewind/RewindView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 92
    return-void
.end method

.method public setRectAlpha(F)V
    .locals 4
    .param p1, "alphaPercent"    # F

    .prologue
    .line 59
    const-string v2, "REwindView"

    const-string/jumbo v3, "setRectAlpha"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/rewind/FaceRect;

    .line 61
    .local v1, "rect":Lcom/lenovo/scg/camera/rewind/FaceRect;
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/rewind/FaceRect;->setAlpha(I)V

    goto :goto_0

    .line 63
    .end local v1    # "rect":Lcom/lenovo/scg/camera/rewind/FaceRect;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/rewind/RewindView;->invalidate()V

    .line 64
    return-void
.end method

.method public setRectVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 67
    const-string v0, "REwindView"

    const-string/jumbo v1, "setRectVisibility"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mRectVisible:Z

    .line 69
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/rewind/RewindView;->invalidate()V

    .line 70
    return-void
.end method

.method public startDrawingThread()V
    .locals 6

    .prologue
    .line 117
    const-string v0, "REwindView"

    const-string/jumbo v1, "startDrawingThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mDrawingTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mDrawingTimer:Ljava/util/Timer;

    .line 120
    new-instance v0, Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;-><init>(Lcom/lenovo/scg/camera/rewind/RewindView;Lcom/lenovo/scg/camera/rewind/RewindView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mTimerTask:Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mDrawingTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mTimerTask:Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;

    iget-wide v2, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mAnimDelay:J

    iget-wide v4, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mAnimIvl:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 123
    :cond_0
    return-void
.end method

.method public stopDrawingThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    const-string v0, "REwindView"

    const-string/jumbo v1, "stopDrawingThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mDrawingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mDrawingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mDrawingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 130
    iput-object v2, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mDrawingTimer:Ljava/util/Timer;

    .line 131
    iput-object v2, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mTimerTask:Lcom/lenovo/scg/camera/rewind/RewindView$DrawingTimerTask;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    return-void
.end method
