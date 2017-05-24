.class Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailPicture"
.end annotation


# instance fields
.field private mIndex:I

.field private mIsBurst:Z

.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsGif:Z

.field private mIsPanorama:Z

.field public mIsPanoramaPic:Z

.field private mIsSpeech:Z

.field private mIsStaticCamera:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

.field private mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)V
    .locals 1
    .param p2, "index"    # I

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    .line 1281
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    .line 1284
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    .line 1285
    return-void
.end method

.method private isScreenNailAnimating()Z
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSize()V
    .locals 5

    .prologue
    .line 1472
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanorama:Z

    if-eqz v2, :cond_0

    .line 1473
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getPanoramaRotation()I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    .line 1480
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_2

    .line 1481
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    .line 1482
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    .line 1489
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    iget v1, v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    .line 1490
    .local v1, "w":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    iget v0, v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    .line 1491
    .local v0, "h":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v1, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2700(III)I

    move-result v3

    iput v3, v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    .line 1492
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2700(III)I

    move-result v3

    iput v3, v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    .line 1493
    return-void

    .line 1474
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsStaticCamera:Z

    if-nez v2, :cond_1

    .line 1475
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getCameraRotation()I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    .line 1477
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    .line 1486
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    invoke-interface {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getImageSize(ILcom/lenovo/scg/gallery3d/ui/PhotoView$Size;)V

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 26
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->isCanScroller()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsInResetToFullAnim:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1454
    :cond_1
    :goto_0
    return-void

    .line 1330
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-nez v3, :cond_3

    .line 1333
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v4

    if-lt v3, v4, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$1300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 1334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawPlaceHolder(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    invoke-static {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1338
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getWidth()I

    move-result v23

    .line 1339
    .local v23, "w":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v15

    .line 1340
    .local v15, "h":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move/from16 v0, v23

    if-ge v3, v0, :cond_4

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-lez v3, :cond_4

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ge v3, v15, :cond_4

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-gtz v3, :cond_5

    .line 1341
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->noDraw()V

    goto :goto_0

    .line 1345
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v14

    .line 1348
    .local v14, "filmRatio":F
    const/16 v24, 0x0

    .line 1349
    .local v24, "wantsCardEffect":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isHaveCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1352
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    if-lez v3, :cond_f

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v14, v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v3

    if-nez v3, :cond_f

    const/16 v24, 0x1

    .line 1356
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    if-eqz v3, :cond_10

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v14, v3

    if-nez v3, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v15, 0x2

    if-eq v3, v4, :cond_10

    const/16 v25, 0x1

    .line 1357
    .local v25, "wantsOffsetEffect":Z
    :goto_2
    if-eqz v24, :cond_11

    div-int/lit8 v3, v23, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v14, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3400(FFF)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v10, v3

    .line 1358
    .local v10, "cx":I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 1359
    .local v11, "cy":I
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 1360
    int-to-float v3, v10

    int-to-float v4, v11

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 1361
    const/16 v19, 0x0

    .line 1362
    .local v19, "scale":F
    if-eqz v24, :cond_12

    .line 1363
    div-int/lit8 v3, v23, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v23

    int-to-float v4, v0

    div-float v17, v3, v4

    .line 1364
    .local v17, "progress":F
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-static {v0, v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v17

    .line 1365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move/from16 v0, v17

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getScrollAlpha(F)F
    invoke-static {v3, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;F)F

    move-result v9

    .line 1366
    .local v9, "alpha":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move/from16 v0, v17

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getScrollScale(F)F
    invoke-static {v3, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;F)F

    move-result v19

    .line 1367
    const/high16 v3, 0x3f800000    # 1.0f

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v14, v9, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3400(FFF)F

    move-result v9

    .line 1368
    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, v19

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v14, v0, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3400(FFF)F

    move-result v19

    .line 1369
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 1370
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 1376
    .end local v9    # "alpha":F
    .end local v17    # "progress":F
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    if-eqz v3, :cond_8

    .line 1377
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 1379
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2700(III)I

    move-result v7

    .line 1380
    .local v7, "drawW":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2700(III)I

    move-result v8

    .line 1381
    .local v8, "drawH":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    neg-int v4, v7

    div-int/lit8 v5, v4, 0x2

    neg-int v4, v8

    div-int/lit8 v6, v4, 0x2

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 1382
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->isScreenNailAnimating()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->invalidate()V

    .line 1385
    :cond_9
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1387
    .local v18, "s":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->stopSpeechPicPlay()V

    .line 1391
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v18

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    invoke-static {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    .line 1438
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsBurst:Z

    if-eqz v3, :cond_d

    .line 1440
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    if-eqz v3, :cond_c

    .line 1441
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 1444
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v18

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawBurstIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    invoke-static {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    .line 1447
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 1448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    invoke-static {v3, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->updateActionBar()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V

    .line 1453
    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 1352
    .end local v7    # "drawW":I
    .end local v8    # "drawH":I
    .end local v10    # "cx":I
    .end local v11    # "cy":I
    .end local v18    # "s":I
    .end local v19    # "scale":F
    .end local v25    # "wantsOffsetEffect":Z
    :cond_f
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1356
    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 1357
    .restart local v25    # "wantsOffsetEffect":Z
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    goto/16 :goto_3

    .line 1371
    .restart local v10    # "cx":I
    .restart local v11    # "cy":I
    .restart local v19    # "scale":F
    :cond_12
    if-eqz v25, :cond_7

    .line 1372
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v15, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v15

    div-float v16, v3, v4

    .line 1373
    .local v16, "offset":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move/from16 v0, v16

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F
    invoke-static {v3, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;F)F

    move-result v9

    .line 1374
    .restart local v9    # "alpha":F
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    goto/16 :goto_4

    .line 1392
    .end local v9    # "alpha":F
    .end local v16    # "offset":F
    .restart local v7    # "drawW":I
    .restart local v8    # "drawH":I
    .restart local v18    # "s":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPanoramaModel:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanoramaPic:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getEditorBarStatus()Z

    move-result v3

    if-nez v3, :cond_14

    .line 1393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v18

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawPanoramaPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    invoke-static {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    goto/16 :goto_5

    .line 1395
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsGif:Z

    if-eqz v3, :cond_15

    .line 1396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v18

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawGifPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    invoke-static {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    goto/16 :goto_5

    .line 1399
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsSpeech:Z

    if-eqz v3, :cond_b

    .line 1404
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    if-eqz v3, :cond_16

    .line 1405
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 1406
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_16

    .line 1407
    move/from16 v22, v7

    .line 1408
    .local v22, "tmp":I
    move v7, v8

    .line 1409
    move/from16 v8, v22

    .line 1413
    .end local v22    # "tmp":I
    :cond_16
    const/4 v12, 0x0

    .line 1414
    .local v12, "drawX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    move-result-object v4

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconWidth:I

    .line 1415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    move-result-object v4

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconHeight:I

    .line 1416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    int-to-float v4, v10

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v5, v7

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPicPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconStartX:I

    .line 1417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    int-to-float v4, v11

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v5, v8, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget v6, v6, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconHeight:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPicPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconStartY:I

    .line 1419
    const/4 v13, 0x0

    .line 1420
    .local v13, "editBarHeight":I
    const/16 v21, 0x0

    .line 1421
    .local v21, "startY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isMoveSpeechIconVertical()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getEditorActionBarHeight()I

    move-result v13

    .line 1424
    :cond_17
    if-lez v13, :cond_18

    .line 1425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .line 1426
    .local v20, "screenHeight":I
    div-int/lit8 v3, v20, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v13, v3

    .line 1428
    .end local v20    # "screenHeight":I
    :cond_18
    div-int/lit8 v3, v8, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconHeight:I

    sub-int/2addr v3, v4

    sub-int v21, v3, v13

    .line 1429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget v4, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconStartY:I

    sub-int/2addr v4, v13

    iput v4, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconStartY:I

    .line 1431
    neg-int v3, v7

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPicPadding:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v4

    add-int v12, v3, v4

    .line 1432
    const-string v3, "PhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " drawX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const-string v3, "PhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " startY - mSpeechPicPadding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPicPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v5

    sub-int v5, v21, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPicPadding:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v4

    sub-int v4, v21, v4

    move-object/from16 v0, p1

    move/from16 v1, v18

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawSpeechPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;III)V
    invoke-static {v3, v0, v1, v12, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;III)V

    goto/16 :goto_5
.end method

.method public forceSize()V
    .locals 3

    .prologue
    .line 1467
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 1468
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->forceImageSize(ILcom/lenovo/scg/gallery3d/ui/PhotoView$Size;)V

    .line 1469
    return-void
.end method

.method public getLoadingState()I
    .locals 1

    .prologue
    .line 1508
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    return v0
.end method

.method public getSize()Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 1497
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 1502
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    return v0
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    .line 1290
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanorama:Z

    .line 1291
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isStaticCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsStaticCamera:Z

    .line 1292
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    .line 1294
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isGif(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsGif:Z

    .line 1298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isSpeech(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsSpeech:Z

    .line 1299
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsSpeech:Z

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsSpeechPic:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2302(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z

    .line 1303
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isPanorama(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanoramaPic:Z

    .line 1304
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanoramaPic:Z

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCurrentBox:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2402(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isCameraBrustPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsBurst:Z

    .line 1312
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    .line 1313
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    .line 1314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 1315
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 1316
    return-void
.end method

.method public setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V
    .locals 0
    .param p1, "s"    # Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 1463
    return-void
.end method
