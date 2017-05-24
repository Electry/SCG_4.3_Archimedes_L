.class Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;
.super Landroid/view/View;
.source "VideoSmartFocusGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceView"
.end annotation


# static fields
.field public static final ALPHA_FULL:I = 0xeb

.field public static final ALPHA_HALF:I = 0x78


# instance fields
.field private isInited:Z

.field private mContext:Landroid/content/Context;

.field private mFaceRect:Landroid/graphics/Rect;

.field private mFaceRectF:Landroid/graphics/RectF;

.field private mFaceRectRadius:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRootView:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 380
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->this$0:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    .line 381
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 370
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mContext:Landroid/content/Context;

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->isInited:Z

    .line 373
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mRootView:Landroid/widget/RelativeLayout;

    .line 377
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRect:Landroid/graphics/Rect;

    .line 378
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRectF:Landroid/graphics/RectF;

    .line 383
    iput-object p2, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mContext:Landroid/content/Context;

    .line 384
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->init()V

    .line 385
    return-void
.end method

.method private getmRootView(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mRootView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 413
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const v0, 0x7f10015a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mRootView:Landroid/widget/RelativeLayout;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 388
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->isInited:Z

    if-eqz v1, :cond_0

    .line 409
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->getmRootView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-nez v1, :cond_1

    .line 393
    const-string v1, "VideoSmartFocusGroup"

    const-string v2, "init() : get rootView == null && return;"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->getmRootView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 398
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->setWillNotDraw(Z)V

    .line 399
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 400
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mPaint:Landroid/graphics/Paint;

    .line 401
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f0d0036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 403
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 404
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f0900c0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 405
    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRectRadius:I

    .line 408
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->isInited:Z

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 441
    const-string v0, "VideoSmartFocusGroup"

    const-string v1, "mFaceView.clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 444
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 446
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 447
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->invalidate()V

    .line 448
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 453
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 454
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "VideoSmartFocusGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDraw() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 458
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRectRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRectRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 461
    :cond_0
    return-void
.end method

.method public removeFaceView()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->getmRootView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->getmRootView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->isInited:Z

    .line 468
    :cond_0
    return-void
.end method

.method public updateFocused(Z)V
    .locals 3
    .param p1, "isFocusingDone"    # Z

    .prologue
    .line 427
    const-string v0, "VideoSmartFocusGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set face rect focused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 430
    if-eqz p1, :cond_1

    .line 431
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xeb

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 436
    :goto_0
    const-string v0, "VideoSmartFocusGroup"

    const-string v1, "Update Alpha done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public updateRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 420
    const-string v0, "VideoSmartFocusGroup"

    const-string/jumbo v1, "updateRect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->mFaceRect:Landroid/graphics/Rect;

    .line 423
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->invalidate()V

    .line 424
    return-void
.end method
