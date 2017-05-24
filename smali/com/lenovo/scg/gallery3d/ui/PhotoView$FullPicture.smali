.class Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullPicture"
.end annotation


# instance fields
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

.field private mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V
    .locals 1

    .prologue
    .line 930
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    .line 957
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    return-void
.end method

.method private drawTileView(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 28
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1068
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageScale()F

    move-result v8

    .line 1069
    .local v8, "imageScale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getWidth()I

    move-result v6

    .line 1070
    .local v6, "viewW":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v7

    .line 1071
    .local v7, "viewH":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 1072
    .local v4, "cx":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 1073
    .local v5, "cy":F
    const/high16 v21, 0x3f800000    # 1.0f

    .line 1075
    .local v21, "scale":F
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v15

    .line 1081
    .local v15, "filmRatio":F
    const/16 v23, 0x0

    .line 1082
    .local v23, "wantsCardEffect":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isHaveCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_0

    .line 1085
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-nez v3, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v15, v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/util/RangeArray;

    move-result-object v3

    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->inOpeningAnimation()Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v23, 0x1

    .line 1089
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    if-eqz v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v15, v3

    if-nez v3, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v25, v7, 0x2

    move/from16 v0, v25

    if-eq v3, v0, :cond_6

    const/16 v24, 0x1

    .line 1090
    .local v24, "wantsOffsetEffect":Z
    :goto_1
    if-eqz v23, :cond_8

    .line 1092
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 1093
    .local v16, "left":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    .line 1094
    .local v19, "right":I
    move/from16 v0, v16

    move/from16 v1, v19

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F
    invoke-static {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3100(III)F

    move-result v18

    .line 1095
    .local v18, "progress":F
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v25

    invoke-static {v0, v3, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v18

    .line 1099
    const/4 v3, 0x0

    cmpg-float v3, v18, v3

    if-gez v3, :cond_1

    .line 1100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move/from16 v0, v18

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getScrollScale(F)F
    invoke-static {v3, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;F)F

    move-result v21

    .line 1101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move/from16 v0, v18

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getScrollAlpha(F)F
    invoke-static {v3, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;F)F

    move-result v9

    .line 1102
    .local v9, "alpha":F
    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, v21

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v15, v0, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3400(FFF)F

    move-result v21

    .line 1103
    const/high16 v3, 0x3f800000    # 1.0f

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v15, v9, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3400(FFF)F

    move-result v9

    .line 1105
    mul-float v8, v8, v21

    .line 1106
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 1109
    sub-int v3, v19, v16

    if-gt v3, v6, :cond_7

    .line 1112
    int-to-float v3, v6

    const/high16 v25, 0x40000000    # 2.0f

    div-float v10, v3, v25

    .line 1119
    .local v10, "cxPage":F
    :goto_2
    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v15, v10, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3400(FFF)F

    move-result v4

    .end local v9    # "alpha":F
    .end local v10    # "cxPage":F
    .end local v16    # "left":I
    .end local v18    # "progress":F
    .end local v19    # "right":I
    :cond_1
    :goto_3
    move-object/from16 v3, p0

    .line 1128
    invoke-direct/range {v3 .. v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->setTileViewPosition(FFIIF)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v25, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;
    invoke-static/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 1132
    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v25, v25, v5

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v3, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 1133
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v25

    move/from16 v0, v25

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v21

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v3, v3, v25

    float-to-int v0, v3

    move/from16 v20, v0

    .line 1134
    .local v20, "s":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v20

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    invoke-static {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    .line 1183
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsBurst:Z

    if-eqz v3, :cond_3

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v20

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawBurstIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    invoke-static {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    .line 1187
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v3, v0, :cond_4

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    invoke-static {v3, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->updateActionBar()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V

    .line 1198
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 1199
    return-void

    .line 1085
    .end local v20    # "s":I
    .end local v24    # "wantsOffsetEffect":Z
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1089
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1117
    .restart local v9    # "alpha":F
    .restart local v16    # "left":I
    .restart local v18    # "progress":F
    .restart local v19    # "right":I
    .restart local v24    # "wantsOffsetEffect":Z
    :cond_7
    sub-int v3, v19, v16

    int-to-float v3, v3

    mul-float v3, v3, v21

    const/high16 v25, 0x40000000    # 2.0f

    div-float v10, v3, v25

    .restart local v10    # "cxPage":F
    goto/16 :goto_2

    .line 1121
    .end local v9    # "alpha":F
    .end local v10    # "cxPage":F
    .end local v16    # "left":I
    .end local v18    # "progress":F
    .end local v19    # "right":I
    :cond_8
    if-eqz v24, :cond_1

    .line 1122
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v25, v7, 0x2

    sub-int v3, v3, v25

    int-to-float v3, v3

    int-to-float v0, v7

    move/from16 v25, v0

    div-float v17, v3, v25

    .line 1123
    .local v17, "offset":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move/from16 v0, v17

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F
    invoke-static {v3, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;F)F

    move-result v9

    .line 1124
    .restart local v9    # "alpha":F
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    goto/16 :goto_3

    .line 1135
    .end local v9    # "alpha":F
    .end local v17    # "offset":F
    .restart local v20    # "s":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsGif:Z

    if-eqz v3, :cond_a

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v20

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawGifPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    invoke-static {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    goto :goto_4

    .line 1142
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPanoramaModel:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsPanoramaPic:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getEditorBarStatus()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v20

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawPanoramaPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    invoke-static {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$3900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    goto/16 :goto_4

    .line 1145
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsSpeech:Z

    if-eqz v3, :cond_2

    .line 1146
    const/4 v11, 0x0

    .line 1147
    .local v11, "drawX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v25, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    invoke-static/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v25

    move/from16 v0, v25

    iput v0, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconWidth:I

    .line 1148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v25, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    invoke-static/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v25

    move/from16 v0, v25

    iput v0, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconHeight:I

    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v25, v25, v4

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v26

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v26, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPicPadding:I
    invoke-static/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconStartX:I

    .line 1150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v25, v25, v5

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconHeight:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v26, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPicPadding:I
    invoke-static/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconStartY:I

    .line 1152
    const/4 v13, 0x0

    .line 1153
    .local v13, "editBarHeight":I
    const/4 v12, 0x0

    .line 1154
    .local v12, "drawY":I
    const/4 v14, 0x0

    .line 1155
    .local v14, "editBarWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isMoveSpeechIconVertical()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getEditorActionBarHeight()I

    move-result v13

    .line 1158
    :cond_c
    if-lez v13, :cond_d

    .line 1159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    .line 1160
    .local v22, "screenHeight":I
    div-int/lit8 v3, v22, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    sub-int v3, v3, v25

    sub-int/2addr v13, v3

    .line 1162
    .end local v22    # "screenHeight":I
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconHeight:I

    move/from16 v25, v0

    sub-int v3, v3, v25

    sub-int v12, v3, v13

    .line 1163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget v0, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconStartY:I

    move/from16 v25, v0

    sub-int v25, v25, v13

    move/from16 v0, v25

    iput v0, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconStartY:I

    .line 1165
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v25, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPicPadding:I
    invoke-static/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v25

    add-int v11, v3, v25

    .line 1167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1168
    const/16 v3, 0x5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v25

    move/from16 v0, v25

    if-ne v3, v0, :cond_e

    .line 1169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isMoveSpeechIconHor()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getEditorActionBarWidth()I

    move-result v14

    .line 1171
    add-int/2addr v11, v14

    .line 1172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget v0, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconStartX:I

    move/from16 v25, v0

    add-int v25, v25, v14

    move/from16 v0, v25

    iput v0, v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconStartX:I

    .line 1173
    const-string v3, "PhotoView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mListener.getEditorActionBarWidth() = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v26, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getEditorActionBarWidth()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v3, "PhotoView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "drawX = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v25, v0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPicPadding:I
    invoke-static/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v25

    sub-int v25, v12, v25

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v25

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawSpeechPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;III)V
    invoke-static {v3, v0, v1, v11, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$4300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;III)V

    goto/16 :goto_4
.end method

.method private setTileViewPosition(FFIIF)V
    .locals 12
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "viewW"    # I
    .param p4, "viewH"    # I
    .param p5, "scale"    # F

    .prologue
    .line 1204
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v4

    .line 1205
    .local v4, "imageW":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v3

    .line 1206
    .local v3, "imageH":I
    int-to-float v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    int-to-float v10, p3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v10, p1

    div-float v10, v10, p5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 1207
    .local v1, "centerX":I
    int-to-float v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, p4

    int-to-float v10, v0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v10, p2

    div-float v10, v10, p5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v2, v9

    .line 1209
    .local v2, "centerY":I
    sub-int v5, v4, v1

    .line 1210
    .local v5, "inverseX":I
    sub-int v6, v3, v2

    .line 1212
    .local v6, "inverseY":I
    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    sparse-switch v9, :sswitch_data_0

    .line 1230
    new-instance v9, Ljava/lang/RuntimeException;

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1214
    :sswitch_0
    move v7, v1

    .line 1215
    .local v7, "x":I
    move v8, v2

    .line 1232
    .local v8, "y":I
    :goto_0
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    move-result-object v9

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    move/from16 v0, p5

    invoke-virtual {v9, v7, v8, v0, v10}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    .line 1233
    return-void

    .line 1218
    .end local v7    # "x":I
    .end local v8    # "y":I
    :sswitch_1
    move v7, v2

    .line 1219
    .restart local v7    # "x":I
    move v8, v5

    .line 1220
    .restart local v8    # "y":I
    goto :goto_0

    .line 1222
    .end local v7    # "x":I
    .end local v8    # "y":I
    :sswitch_2
    move v7, v5

    .line 1223
    .restart local v7    # "x":I
    move v8, v6

    .line 1224
    .restart local v8    # "y":I
    goto :goto_0

    .line 1226
    .end local v7    # "x":I
    .end local v8    # "y":I
    :sswitch_3
    move v7, v6

    .line 1227
    .restart local v7    # "x":I
    move v8, v1

    .line 1228
    .restart local v8    # "y":I
    goto :goto_0

    .line 1212
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private updateSize()V
    .locals 4

    .prologue
    .line 1006
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsPanorama:Z

    if-eqz v2, :cond_0

    .line 1007
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getPanoramaRotation()I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    .line 1014
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    move-result-object v2

    iget v1, v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 1015
    .local v1, "w":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    move-result-object v2

    iget v0, v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 1016
    .local v0, "h":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v1, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2700(III)I

    move-result v3

    iput v3, v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    .line 1017
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2700(III)I

    move-result v3

    iput v3, v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    .line 1018
    return-void

    .line 1008
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsStaticCamera:Z

    if-nez v2, :cond_1

    .line 1009
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getCameraRotation()I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0

    .line 1011
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1022
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->drawTileView(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    .line 1031
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    if-eqz v2, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->isCenter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1034
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onPictureCenter(Z)V

    .line 1036
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->isCenter()Z

    move-result v1

    .line 1037
    .local v1, "isCenter":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1038
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->isCenter()Z

    move-result v1

    .line 1041
    :cond_3
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 1042
    .local v0, "isCameraCenter":Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1043
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->lockOrientation()V

    goto :goto_0

    .line 1041
    .end local v0    # "isCameraCenter":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public forceSize()V
    .locals 3

    .prologue
    .line 1001
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->updateSize()V

    .line 1002
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->forceImageSize(ILcom/lenovo/scg/gallery3d/ui/PhotoView$Size;)V

    .line 1003
    return-void
.end method

.method public getLoadingState()I
    .locals 1

    .prologue
    .line 1238
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    return v0
.end method

.method public getSize()Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 1059
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 1064
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    return v0
.end method

.method public reload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 966
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    .line 968
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    .line 969
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsPanorama:Z

    .line 970
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isStaticCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsStaticCamera:Z

    .line 971
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    .line 972
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isGif(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsGif:Z

    .line 974
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isSpeech(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsSpeech:Z

    .line 975
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsSpeech:Z

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsSpeechPic:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2302(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z

    .line 979
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isCameraBrustPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsBurst:Z

    .line 981
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    .line 982
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    .line 983
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 984
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->updateSize()V

    .line 987
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isPanorama(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsPanoramaPic:Z

    .line 988
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->mIsPanoramaPic:Z

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCurrentBox:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2402(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I

    .line 992
    :cond_0
    return-void
.end method

.method public setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V
    .locals 1
    .param p1, "s"    # Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$2200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 1055
    return-void
.end method
