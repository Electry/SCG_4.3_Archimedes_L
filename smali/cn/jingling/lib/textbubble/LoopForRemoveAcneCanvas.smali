.class public Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;
.super Landroid/widget/ImageView;
.source "LoopForRemoveAcneCanvas.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field protected mEvent:Lcn/jingling/lib/textbubble/PwMotion;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

.field private mRmoveAcneState:Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;

.field public pathBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mGestureDetector:Landroid/view/GestureDetector;

    .line 25
    new-instance v1, Lcn/jingling/lib/textbubble/PwMotionHigh;

    invoke-direct {v1}, Lcn/jingling/lib/textbubble/PwMotionHigh;-><init>()V

    iput-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    .line 29
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 30
    iget-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v2}, Lcn/jingling/lib/textbubble/GroundImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->pathBitmap:Landroid/graphics/Bitmap;

    .line 31
    iget-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->pathBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->pathBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->canvas:Landroid/graphics/Canvas;

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 35
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 36
    iget-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 38
    new-instance v1, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;

    iget-object v2, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-direct {v1, v2, p0}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;-><init>(Landroid/graphics/Canvas;Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mRmoveAcneState:Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;

    .line 40
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mGestureDetector:Landroid/view/GestureDetector;

    .line 41
    iget-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mGroundImage:Lcn/jingling/lib/textbubble/GroundImage;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/textbubble/GroundImage;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v2

    .line 50
    :cond_1
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    invoke-virtual {v0, p2}, Lcn/jingling/lib/textbubble/PwMotion;->setEvent(Landroid/view/MotionEvent;)V

    .line 51
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/PwMotion;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 53
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/PwMotion;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mRmoveAcneState:Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mouseDown(Lcn/jingling/lib/textbubble/PwMotion;)V

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mRmoveAcneState:Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mouseMove(Lcn/jingling/lib/textbubble/PwMotion;)V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mRmoveAcneState:Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/LoopForRemoveAcneCanvas;->mEvent:Lcn/jingling/lib/textbubble/PwMotion;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/LoopForRemoveAcneState;->mouseUp(Lcn/jingling/lib/textbubble/PwMotion;)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
