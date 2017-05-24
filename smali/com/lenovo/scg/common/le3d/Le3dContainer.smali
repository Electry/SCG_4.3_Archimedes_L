.class public Lcom/lenovo/scg/common/le3d/Le3dContainer;
.super Lcom/lenovo/scg/common/le3d/Le3dView;
.source "Le3dContainer.java"


# instance fields
.field private mIsHorFling:Z

.field private mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

.field private mMoveHorDistance:F

.field private mMoveVerDistance:F

.field private mScroller:Landroid/widget/OverScroller;

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/common/le3d/Le3dView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V
    .locals 2
    .param p1, "content"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dView;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mScroller:Landroid/widget/OverScroller;

    .line 30
    return-void
.end method


# virtual methods
.method public addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public clickTest(FF)Z
    .locals 4
    .param p1, "clickX"    # F
    .param p2, "clickY"    # F

    .prologue
    .line 192
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 194
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dView;->clickTest(FF)Z

    move-result v1

    .line 195
    .local v1, "clicked":Z
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 197
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    .end local v1    # "clicked":Z
    :goto_1
    return v3

    .line 192
    .restart local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    .restart local v1    # "clicked":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    .end local v1    # "clicked":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public destory()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->destory()V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "currX"    # I
    .param p2, "currY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 114
    if-eqz p3, :cond_1

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mIsHorFling:Z

    .line 116
    sub-int v0, p6, p5

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mMoveHorDistance:F

    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mScroller:Landroid/widget/OverScroller;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->requestRender()V

    .line 127
    return-void

    .line 117
    :cond_1
    if-eqz p4, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mIsHorFling:Z

    .line 119
    sub-int v0, p8, p7

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mMoveVerDistance:F

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOverScroller()Landroid/widget/OverScroller;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method public getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dView;

    goto :goto_0
.end method

.method public getViewFromId(I)Lcom/lenovo/scg/common/le3d/Le3dView;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 77
    .local v1, "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getID()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 81
    .end local v1    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    :goto_1
    return-object v1

    .line 75
    .restart local v1    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getViewList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/common/le3d/Le3dView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initClipRect(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 201
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 203
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lenovo/scg/common/le3d/Le3dView;->initClipRect(FFFF)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_0
    return-void
.end method

.method public onDraw()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->loadMatrix()V

    .line 172
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const-string v2, "jiaxiaowei"

    const-string v3, "computeScrollOffset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-boolean v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mIsHorFling:Z

    if-nez v2, :cond_2

    .line 175
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mTranslateY:F

    sub-float/2addr v2, v3

    invoke-virtual {p0, v4, v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->onMove(FF)V

    .line 179
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->requestRender()V

    .line 182
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 183
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 184
    .local v1, "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v1, :cond_1

    .line 185
    const-string/jumbo v2, "tyl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getCenterXInScreen()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ViewY= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getCenterYInScreen()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->draw()V

    .line 182
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    .end local v0    # "i":I
    .end local v1    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mTranslateX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0, v2, v4}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->onMove(FF)V

    goto :goto_0

    .line 189
    .restart local v0    # "i":I
    :cond_3
    return-void
.end method

.method public onEffectMove(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 157
    cmpl-float v2, p1, v3

    if-nez v2, :cond_0

    cmpl-float v2, p2, v3

    if-nez v2, :cond_0

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 162
    .local v1, "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dView;->onMoveInScreen(FF)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    .end local v1    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->requestRender()V

    goto :goto_0
.end method

.method public onMove(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 139
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    cmpl-float v0, p2, v2

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->onMoveInScreen(FF)V

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    if-eqz v0, :cond_2

    .line 144
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mMoveHorDistance:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mMoveHorDistance:F

    div-float v1, p1, v1

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->onMove(FF)V

    .line 147
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mMoveVerDistance:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    cmpl-float v0, p2, v2

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mMoveVerDistance:F

    div-float v1, p2, v1

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->onMove(FF)V

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->requestRender()V

    goto :goto_0
.end method

.method public removeAllView()V
    .locals 3

    .prologue
    .line 257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 259
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->destory()V

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 262
    return-void
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 209
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mAlpha:F

    .line 210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 212
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dView;->setAlpha(F)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_0
    return-void
.end method

.method public setLe3dScrollBar(Lcom/lenovo/scg/common/le3d/Le3dScrollBar;)V
    .locals 0
    .param p1, "le3dScrollBar"    # Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    .line 235
    return-void
.end method

.method public setMoveDistance(FF)V
    .locals 0
    .param p1, "horDistance"    # F
    .param p2, "verDistance"    # F

    .prologue
    .line 246
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mMoveHorDistance:F

    .line 247
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mMoveVerDistance:F

    .line 248
    return-void
.end method

.method public setYuvViewClipRect(FFFF)V
    .locals 3
    .param p1, "clipSx"    # F
    .param p2, "clipSy"    # F
    .param p3, "clipEx"    # F
    .param p4, "clipEy"    # F

    .prologue
    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 224
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v0, p1, p2, p3, p3}, Lcom/lenovo/scg/common/le3d/Le3dView;->initClipRect(FFFF)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_0
    return-void
.end method

.method public stopFling()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContainer;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 254
    :cond_0
    return-void
.end method
