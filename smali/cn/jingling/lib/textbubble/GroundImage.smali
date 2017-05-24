.class public Lcn/jingling/lib/textbubble/GroundImage;
.super Lcn/jingling/lib/textbubble/ImageControl;
.source "GroundImage.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final DOUBLE_TAP_SCALE:F = 1.9f

.field public static final MAX_SCALE_LIMIT:F = 2.0f


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcn/jingling/lib/textbubble/ImageControl;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/GroundImage;->mGestureDetector:Landroid/view/GestureDetector;

    .line 25
    return-void
.end method

.method private updateObjects(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 573
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/ScreenControl;->getmIsAddingAccessory()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 574
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v3

    iget-object v3, v3, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 575
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 577
    .local v1, "arrayListSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 607
    .end local v1    # "arrayListSize":I
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 579
    .restart local v1    # "arrayListSize":I
    .restart local v2    # "i":I
    :cond_1
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v3

    iget-object v3, v3, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/textbubble/AccessoryImage;

    .line 580
    .local v0, "accessoryImage":Lcn/jingling/lib/textbubble/AccessoryImage;
    invoke-virtual {v0, p1}, Lcn/jingling/lib/textbubble/AccessoryImage;->addMatrix(Landroid/graphics/Matrix;)V

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 598
    .end local v0    # "accessoryImage":Lcn/jingling/lib/textbubble/AccessoryImage;
    .end local v1    # "arrayListSize":I
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jingling/lib/textbubble/ScreenControl;->getmIsAddingText()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v3

    iget-object v3, v3, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 601
    .restart local v1    # "arrayListSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 603
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v3

    iget-object v3, v3, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/textbubble/TextBubbleControl;

    .line 604
    .local v0, "accessoryImage":Lcn/jingling/lib/textbubble/TextBubbleControl;
    invoke-virtual {v0, p1}, Lcn/jingling/lib/textbubble/TextBubbleControl;->addMatrix(Landroid/graphics/Matrix;)V

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected addMatrix(Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 149
    iget-object v3, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 150
    iget-object v3, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 151
    iget-object v3, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 153
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v3

    iget-object v3, v3, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 156
    .local v1, "arrayListSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 161
    return-void

    .line 158
    :cond_0
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v3

    iget-object v3, v3, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/textbubble/AccessoryImage;

    .line 159
    .local v0, "accessoryImage":Lcn/jingling/lib/textbubble/AccessoryImage;
    invoke-virtual {v0, p1}, Lcn/jingling/lib/textbubble/AccessoryImage;->addMatrix(Landroid/graphics/Matrix;)V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addingAccessoryRebound()V
    .locals 7

    .prologue
    .line 174
    new-instance v4, Landroid/graphics/Matrix;

    iget-object v6, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v4, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 175
    .local v4, "matrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 176
    .local v3, "inverseMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 178
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/GroundImage;->rebound()V

    .line 180
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 181
    .local v5, "reMatrix":Landroid/graphics/Matrix;
    iget-object v6, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 183
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v6

    iget-object v6, v6, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 184
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 186
    .local v1, "arrayListSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 191
    return-void

    .line 188
    :cond_0
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v6

    iget-object v6, v6, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/textbubble/AccessoryImage;

    .line 189
    .local v0, "accessoryImage":Lcn/jingling/lib/textbubble/AccessoryImage;
    invoke-virtual {v0, v5}, Lcn/jingling/lib/textbubble/AccessoryImage;->addMatrix(Landroid/graphics/Matrix;)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addingAccessoryUpdate(FFFLjava/lang/Boolean;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V
    .locals 6
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "scale"    # F
    .param p4, "willRotate"    # Ljava/lang/Boolean;
    .param p5, "oldFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p6, "newFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 196
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 197
    .local v1, "moveMatrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 200
    .local v3, "zoomMatrix":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iput-object v4, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 201
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v4, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 203
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcn/jingling/lib/textbubble/GroundImage;->mFlagZoom:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    new-instance v2, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v2}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    .line 206
    .local v2, "point":Lcn/jingling/lib/textbubble/MyPoint;
    iget v4, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 208
    invoke-virtual {v2, v0}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v2

    .line 210
    iget v4, v2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 211
    iget v5, v2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 210
    invoke-virtual {v3, p3, p3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 216
    .end local v2    # "point":Lcn/jingling/lib/textbubble/MyPoint;
    :cond_0
    iget-object v4, p0, Lcn/jingling/lib/textbubble/GroundImage;->mFlagMove:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 221
    :cond_1
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 223
    invoke-virtual {p0, v3}, Lcn/jingling/lib/textbubble/GroundImage;->addMatrix(Landroid/graphics/Matrix;)V

    .line 226
    return-void
.end method

.method protected addingBlushRebound(FFFLjava/lang/Boolean;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V
    .locals 12
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "scale"    # F
    .param p4, "willRotate"    # Ljava/lang/Boolean;
    .param p5, "oldFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p6, "newFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 362
    new-instance v9, Landroid/graphics/Matrix;

    iget-object v0, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v9, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 363
    .local v9, "matrix":Landroid/graphics/Matrix;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 364
    .local v8, "inverseMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 366
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/GroundImage;->rebound()V

    .line 368
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11, v8}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 369
    .local v11, "reMatrix":Landroid/graphics/Matrix;
    iget-object v0, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 371
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->getmImageControlArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 373
    .local v10, "numOfAccessory":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v10, :cond_0

    .line 382
    return-void

    .line 375
    :cond_0
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->getmImageControlArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/textbubble/ImageControl;

    .line 378
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcn/jingling/lib/textbubble/ImageControl;->updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 373
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method protected addingTextRebound()V
    .locals 7

    .prologue
    .line 243
    new-instance v4, Landroid/graphics/Matrix;

    iget-object v6, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v4, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 244
    .local v4, "matrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 245
    .local v3, "inverseMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 247
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/GroundImage;->rebound()V

    .line 249
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 250
    .local v5, "reMatrix":Landroid/graphics/Matrix;
    iget-object v6, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 252
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v6

    iget-object v6, v6, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    .line 253
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 255
    .local v0, "arrayListSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 266
    return-void

    .line 257
    :cond_0
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v6

    iget-object v6, v6, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jingling/lib/textbubble/TextBubbleControl;

    .line 259
    .local v1, "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    invoke-virtual {v1, v5}, Lcn/jingling/lib/textbubble/TextBubbleControl;->addMatrix(Landroid/graphics/Matrix;)V

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addingTextUpdate(FFFLjava/lang/Boolean;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V
    .locals 11
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "scale"    # F
    .param p4, "willRotate"    # Ljava/lang/Boolean;
    .param p5, "oldFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p6, "newFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p7, "centerPoint"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 311
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 312
    .local v5, "moveMatrix":Landroid/graphics/Matrix;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 315
    .local v8, "zoomMatrix":Landroid/graphics/Matrix;
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    iput-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 316
    new-instance v4, Landroid/graphics/Matrix;

    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v4, v9}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 318
    .local v4, "matrix":Landroid/graphics/Matrix;
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mFlagZoom:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 320
    new-instance v7, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v7}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    .line 321
    .local v7, "point":Lcn/jingling/lib/textbubble/MyPoint;
    iget v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpHeight:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 323
    invoke-virtual {v7, v4}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v7

    .line 325
    if-nez p7, :cond_2

    .line 326
    iget v9, v7, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 327
    iget v10, v7, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 326
    invoke-virtual {v8, p3, p3, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 335
    .end local v7    # "point":Lcn/jingling/lib/textbubble/MyPoint;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mFlagMove:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 337
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 342
    :cond_1
    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 344
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 345
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 346
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->invalidate()V

    .line 348
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v9

    .line 349
    invoke-virtual {v9}, Lcn/jingling/lib/textbubble/ScreenControl;->getmImageControlArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 350
    .local v6, "numOfAccessory":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v6, :cond_3

    .line 357
    return-void

    .line 330
    .end local v2    # "i":I
    .end local v6    # "numOfAccessory":I
    .restart local v7    # "point":Lcn/jingling/lib/textbubble/MyPoint;
    :cond_2
    move-object/from16 v0, p7

    iget v9, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 331
    move-object/from16 v0, p7

    iget v10, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 330
    invoke-virtual {v8, p3, p3, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 351
    .end local v7    # "point":Lcn/jingling/lib/textbubble/MyPoint;
    .restart local v2    # "i":I
    .restart local v6    # "numOfAccessory":I
    :cond_3
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v9

    iget-object v9, v9, Lcn/jingling/lib/textbubble/ScreenControl;->mImageControlArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jingling/lib/textbubble/TextBubbleControl;

    .line 352
    .local v1, "bubbleControl":Lcn/jingling/lib/textbubble/TextBubbleControl;
    invoke-virtual {v1}, Lcn/jingling/lib/textbubble/TextBubbleControl;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 353
    .local v3, "m":Landroid/graphics/Matrix;
    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 354
    invoke-virtual {v1, v3}, Lcn/jingling/lib/textbubble/TextBubbleControl;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getGestureDetector()Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcn/jingling/lib/textbubble/GroundImage;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public getGrounImageRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 751
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcn/jingling/lib/textbubble/GroundImage;->mMarginX:I

    sget v2, Lcn/jingling/lib/textbubble/GroundImage;->mMarginY:I

    sget v3, Lcn/jingling/lib/textbubble/GroundImage;->mMarginX:I

    sget v4, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutWidth:I

    add-int/2addr v3, v4

    sget v4, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutHeight:I

    sget v5, Lcn/jingling/lib/textbubble/GroundImage;->mMarginY:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public giveValidPoint(Lcn/jingling/lib/textbubble/MyPoint;)Lcn/jingling/lib/textbubble/MyPoint;
    .locals 8
    .param p1, "newPoint"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    const/4 v7, 0x0

    .line 424
    new-instance v1, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v1, p1}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 426
    .local v1, "p2":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v6, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v6}, Lcn/jingling/lib/textbubble/MyPoint;->givePointBeforTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v1

    .line 428
    iget v4, v1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 429
    .local v4, "x":F
    iget v5, v1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 431
    .local v5, "y":F
    iget-object v6, p0, Lcn/jingling/lib/textbubble/GroundImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 432
    .local v3, "width":I
    iget-object v6, p0, Lcn/jingling/lib/textbubble/GroundImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 434
    .local v0, "height":I
    cmpg-float v6, v4, v7

    if-gez v6, :cond_0

    .line 435
    const/4 v4, 0x0

    .line 438
    :cond_0
    int-to-float v6, v3

    cmpl-float v6, v4, v6

    if-lez v6, :cond_1

    .line 439
    int-to-float v4, v3

    .line 442
    :cond_1
    cmpg-float v6, v5, v7

    if-gez v6, :cond_2

    .line 443
    const/4 v5, 0x0

    .line 446
    :cond_2
    int-to-float v6, v0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    .line 447
    int-to-float v5, v0

    .line 450
    :cond_3
    invoke-virtual {v1, v4, v5}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 455
    iget-object v6, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v6}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v2

    .line 457
    .local v2, "point":Lcn/jingling/lib/textbubble/MyPoint;
    return-object v2
.end method

.method public inRect(Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "point"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v6, -0x40af9db22d0e5604L    # -0.001

    .line 517
    iget v2, p1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 518
    .local v2, "x":F
    iget v3, p1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 520
    .local v3, "y":F
    iget-object v4, p0, Lcn/jingling/lib/textbubble/GroundImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 521
    .local v1, "width":I
    iget-object v4, p0, Lcn/jingling/lib/textbubble/GroundImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 524
    .local v0, "height":I
    float-to-double v4, v2

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    float-to-double v4, v3

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    float-to-double v4, v2

    int-to-double v6, v1

    add-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    float-to-double v4, v3

    int-to-double v6, v0

    add-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 525
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 527
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method public initializeData()Z
    .locals 14

    .prologue
    .line 34
    invoke-super {p0}, Lcn/jingling/lib/textbubble/ImageControl;->initializeData()Z

    move-result v10

    if-nez v10, :cond_0

    .line 35
    const/4 v10, 0x0

    .line 61
    :goto_0
    return v10

    .line 38
    :cond_0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sget v12, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutWidth:I

    int-to-double v12, v12

    mul-double/2addr v10, v12

    iget v12, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpWidth:I

    int-to-double v12, v12

    div-double v8, v10, v12

    .line 39
    .local v8, "widthScale":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sget v12, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutHeight:I

    int-to-double v12, v12

    mul-double/2addr v10, v12

    iget v12, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpHeight:I

    int-to-double v12, v12

    div-double v4, v10, v12

    .line 40
    .local v4, "heightScale":D
    cmpg-double v10, v4, v8

    if-gez v10, :cond_1

    move-wide v6, v4

    .line 42
    .local v6, "scale":D
    :goto_1
    sget v10, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutWidth:I

    int-to-double v10, v10

    iget v12, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpWidth:I

    int-to-double v12, v12

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v0, v10, v12

    .line 43
    .local v0, "dx":D
    sget v10, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutHeight:I

    int-to-double v10, v10

    iget v12, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpHeight:I

    int-to-double v12, v12

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v2, v10, v12

    .line 45
    .local v2, "dy":D
    iget-object v10, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    double-to-float v11, v6

    double-to-float v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 46
    iget-object v10, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    double-to-float v11, v0

    double-to-float v12, v2

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 47
    iget-object v10, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    iget-object v11, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 48
    iget-object v10, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->invalidate()V

    .line 54
    new-instance v10, Landroid/view/GestureDetector;

    invoke-direct {v10, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v10, p0, Lcn/jingling/lib/textbubble/GroundImage;->mGestureDetector:Landroid/view/GestureDetector;

    .line 55
    iget-object v10, p0, Lcn/jingling/lib/textbubble/GroundImage;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v10, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 57
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcn/jingling/lib/textbubble/GroundImage;->setFlagMove(Ljava/lang/Boolean;)V

    .line 58
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcn/jingling/lib/textbubble/GroundImage;->setFlagZoom(Ljava/lang/Boolean;)V

    .line 59
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcn/jingling/lib/textbubble/GroundImage;->setFlagRotate(Ljava/lang/Boolean;)V

    .line 61
    const/4 v10, 0x1

    goto :goto_0

    .end local v0    # "dx":D
    .end local v2    # "dy":D
    .end local v6    # "scale":D
    :cond_1
    move-wide v6, v8

    .line 40
    goto :goto_1
.end method

.method public intersectionValidPoint(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Lcn/jingling/lib/textbubble/MyPoint;
    .locals 10
    .param p1, "oldPoint"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p2, "newPoint"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    const/4 v9, 0x0

    .line 462
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v7}, Lcn/jingling/lib/textbubble/MyPoint;->givePointBeforTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v1

    .line 463
    .local v1, "p1":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v7}, Lcn/jingling/lib/textbubble/MyPoint;->givePointBeforTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v2

    .line 465
    .local v2, "p2":Lcn/jingling/lib/textbubble/MyPoint;
    new-instance v5, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v5}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    .line 467
    .local v5, "validPoint":Lcn/jingling/lib/textbubble/MyPoint;
    invoke-virtual {p0, v2}, Lcn/jingling/lib/textbubble/GroundImage;->inRect(Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 468
    new-instance v7, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v7, p2}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 511
    :goto_0
    return-object v7

    .line 469
    :cond_0
    invoke-virtual {p0, v1}, Lcn/jingling/lib/textbubble/GroundImage;->inRect(Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    .line 470
    new-instance v7, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v7, p1}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(Lcn/jingling/lib/textbubble/MyPoint;)V

    goto :goto_0

    .line 473
    :cond_1
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 474
    .local v6, "width":I
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 476
    .local v0, "height":I
    new-instance v3, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v3}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    .line 477
    .local v3, "u1":Lcn/jingling/lib/textbubble/MyPoint;
    new-instance v4, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v4}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    .line 479
    .local v4, "u2":Lcn/jingling/lib/textbubble/MyPoint;
    invoke-virtual {v3, v9, v9}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 480
    int-to-float v7, v6

    invoke-virtual {v4, v7, v9}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 482
    iget v7, v2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_2

    .line 483
    invoke-static {v3, v4, v1, v2, v5}, Lcn/jingling/lib/textbubble/MyPoint;->intersection(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 484
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v7

    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual {v3, v9, v9}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 488
    int-to-float v7, v0

    invoke-virtual {v4, v9, v7}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 490
    iget v7, v2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_3

    .line 491
    invoke-static {v3, v4, v1, v2, v5}, Lcn/jingling/lib/textbubble/MyPoint;->intersection(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 492
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v7

    goto :goto_0

    .line 495
    :cond_3
    int-to-float v7, v6

    invoke-virtual {v3, v7, v9}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 496
    int-to-float v7, v6

    int-to-float v8, v0

    invoke-virtual {v4, v7, v8}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 498
    iget v7, v2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    int-to-float v8, v6

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 499
    invoke-static {v3, v4, v1, v2, v5}, Lcn/jingling/lib/textbubble/MyPoint;->intersection(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 500
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v7

    goto/16 :goto_0

    .line 503
    :cond_4
    int-to-float v7, v0

    invoke-virtual {v3, v9, v7}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 504
    int-to-float v7, v6

    int-to-float v8, v0

    invoke-virtual {v4, v7, v8}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 506
    iget v7, v2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    int-to-float v8, v0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 507
    invoke-static {v3, v4, v1, v2, v5}, Lcn/jingling/lib/textbubble/MyPoint;->intersection(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 508
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v7

    goto/16 :goto_0

    .line 511
    :cond_5
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public isLand()Z
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpWidth:I

    iget v1, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpHeight:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->mFlagZoom:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-nez v19, :cond_0

    .line 638
    const/16 v19, 0x0

    .line 684
    :goto_0
    return v19

    .line 641
    :cond_0
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 644
    .local v10, "iMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 646
    new-instance v12, Lcn/jingling/lib/textbubble/MyPoint;

    sget v19, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutWidth:I

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 647
    sget v22, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutHeight:I

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    .line 646
    move/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 649
    .local v12, "midPoint":Lcn/jingling/lib/textbubble/MyPoint;
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sget v19, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutWidth:I

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->bmpWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v20, v22, v24

    .line 650
    .local v20, "widthScale":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sget v19, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutHeight:I

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->bmpHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v8, v22, v24

    .line 651
    .local v8, "heightScale":D
    cmpg-double v19, v8, v20

    if-gez v19, :cond_1

    move-wide v14, v8

    .line 652
    .local v14, "scale1":D
    :goto_1
    sget v19, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutWidth:I

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->bmpWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v14

    sub-double v22, v22, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v4, v22, v24

    .line 653
    .local v4, "dx":D
    sget v19, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutHeight:I

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->bmpHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v14

    sub-double v22, v22, v24

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v6, v22, v24

    .line 655
    .local v6, "dy":D
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    .line 656
    .local v11, "matrix":Landroid/graphics/Matrix;
    const/16 v19, 0x9

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 657
    .local v18, "values":[F
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 658
    const/16 v19, 0x0

    aget v19, v18, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 659
    .local v16, "scale2":D
    const/high16 v13, 0x3f800000    # 1.0f

    .line 661
    .local v13, "scale":F
    sub-double v22, v14, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    const-wide v24, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v19, v22, v24

    if-gtz v19, :cond_2

    .line 663
    const v13, 0x3ff33333    # 1.9f

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    sub-float v22, v22, v23

    .line 666
    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    sub-float v23, v23, v24

    .line 665
    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 678
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/textbubble/GroundImage;->rebound()V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 681
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcn/jingling/lib/textbubble/GroundImage;->updateObjects(Landroid/graphics/Matrix;)V

    .line 684
    const/16 v19, 0x0

    goto/16 :goto_0

    .end local v4    # "dx":D
    .end local v6    # "dy":D
    .end local v11    # "matrix":Landroid/graphics/Matrix;
    .end local v13    # "scale":F
    .end local v14    # "scale1":D
    .end local v16    # "scale2":D
    .end local v18    # "values":[F
    :cond_1
    move-wide/from16 v14, v20

    .line 651
    goto/16 :goto_1

    .line 671
    .restart local v4    # "dx":D
    .restart local v6    # "dy":D
    .restart local v11    # "matrix":Landroid/graphics/Matrix;
    .restart local v13    # "scale":F
    .restart local v14    # "scale1":D
    .restart local v16    # "scale2":D
    .restart local v18    # "values":[F
    :cond_2
    double-to-float v13, v14

    .line 672
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    double-to-float v0, v4

    move/from16 v22, v0

    double-to-float v0, v6

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_2
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 702
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
    .line 709
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 716
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 729
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 696
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 734
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jingling/lib/textbubble/ScreenControl;->singleTapped()V

    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 165
    iget-object v0, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 166
    iget-object v0, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 167
    iget-object v0, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 168
    return-void
.end method

.method public rotate(F)Landroid/graphics/Matrix;
    .locals 4
    .param p1, "degrees"    # F

    .prologue
    .line 388
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    sget v2, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v0, v2, v3}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 390
    .local v0, "midPoint":Lcn/jingling/lib/textbubble/MyPoint;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 391
    .local v1, "rotateMatrix":Landroid/graphics/Matrix;
    iget v2, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 392
    iget v3, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 391
    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 393
    iget-object v2, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 394
    iget-object v2, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 395
    iget-object v2, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 397
    return-object v1
.end method

.method public shouldMoveVector(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Lcn/jingling/lib/textbubble/MyPoint;
    .locals 13
    .param p1, "leftTop"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p2, "rightTop"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p3, "rightBottom"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p4, "leftBottom"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p5, "oldMove"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 534
    new-instance v8, Lcn/jingling/lib/textbubble/MyPoint;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 535
    .local v8, "zeroPoint":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Lcn/jingling/lib/textbubble/MyPoint;->givePointBeforTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v8

    .line 536
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcn/jingling/lib/textbubble/MyPoint;->givePointBeforTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object p5

    .line 537
    move-object/from16 v0, p5

    iget v9, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v10, v8, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float v1, v9, v10

    .line 538
    .local v1, "dx":F
    move-object/from16 v0, p5

    iget v9, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v10, v8, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float v2, v9, v10

    .line 541
    .local v2, "dy":F
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v9}, Lcn/jingling/lib/textbubble/MyPoint;->givePointBeforTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v4

    .line 542
    .local v4, "lt":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v9}, Lcn/jingling/lib/textbubble/MyPoint;->givePointBeforTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v6

    .line 543
    .local v6, "rt":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcn/jingling/lib/textbubble/MyPoint;->givePointBeforTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v3

    .line 544
    .local v3, "lb":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcn/jingling/lib/textbubble/MyPoint;->givePointBeforTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v5

    .line 548
    .local v5, "rb":Lcn/jingling/lib/textbubble/MyPoint;
    const/4 v9, 0x0

    cmpg-float v9, v1, v9

    if-gez v9, :cond_1

    .line 549
    iget v9, v4, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v10, v6, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget v10, v3, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v11, v5, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    neg-float v7, v9

    .line 550
    .local v7, "t":F
    cmpl-float v9, v1, v7

    if-lez v9, :cond_0

    .line 557
    :goto_0
    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-gez v9, :cond_4

    .line 558
    iget v9, v4, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v10, v6, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget v10, v3, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v11, v5, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    neg-float v7, v9

    .line 559
    cmpl-float v9, v2, v7

    if-lez v9, :cond_3

    .line 568
    :goto_1
    new-instance v9, Lcn/jingling/lib/textbubble/MyPoint;

    iget v10, v8, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    add-float/2addr v10, v1

    iget v11, v8, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    add-float/2addr v11, v2

    invoke-direct {v9, v10, v11}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 569
    iget-object v10, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v9

    .line 568
    return-object v9

    :cond_0
    move v1, v7

    .line 550
    goto :goto_0

    .line 552
    .end local v7    # "t":F
    :cond_1
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    .line 553
    iget v10, v4, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v11, v6, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v11, v3, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v12, v5, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 552
    sub-float v7, v9, v10

    .line 554
    .restart local v7    # "t":F
    cmpg-float v9, v1, v7

    if-gez v9, :cond_2

    :goto_2
    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_2

    :cond_3
    move v2, v7

    .line 559
    goto :goto_1

    .line 561
    :cond_4
    iget-object v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    .line 562
    iget v10, v4, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v11, v6, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v11, v3, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v12, v5, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 561
    sub-float v7, v9, v10

    .line 563
    cmpg-float v9, v2, v7

    if-gez v9, :cond_5

    :goto_3
    goto :goto_1

    :cond_5
    move v2, v7

    goto :goto_3
.end method

.method public translate(FF)Landroid/graphics/Matrix;
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 413
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 414
    .local v0, "moveMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 415
    iget-object v1, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 416
    iget-object v1, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 417
    iget-object v1, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 419
    return-object v0
.end method

.method public updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V
    .locals 12
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "scale"    # F
    .param p4, "willRotate"    # Z
    .param p5, "oldFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p6, "newFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p7, "centerPoint"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 67
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    .local v3, "iMatrix":Landroid/graphics/Matrix;
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 69
    new-instance v7, Lcn/jingling/lib/textbubble/MyPoint;

    iget v8, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpHeight:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-direct {v7, v8, v9}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 70
    iget-object v8, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v4

    .line 71
    .local v4, "point":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mFlagZoom:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 72
    const/16 v7, 0x9

    new-array v5, v7, [F

    .line 73
    .local v5, "values":[F
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 74
    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x0

    aget v8, v5, v8

    mul-float/2addr v7, v8

    .line 75
    const/4 v8, 0x1

    aget v8, v5, v8

    const/4 v9, 0x1

    aget v9, v5, v9

    mul-float/2addr v8, v9

    .line 74
    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 75
    float-to-double v10, p3

    .line 74
    mul-double/2addr v8, v10

    double-to-float v6, v8

    .line 76
    .local v6, "zoomScale":F
    iget v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    sget v8, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutWidth:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_0

    .line 77
    iget v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    sget v8, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutHeight:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 78
    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    .line 80
    :cond_1
    iget v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    sget v8, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutWidth:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_2

    .line 81
    iget v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->bmpHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    sget v8, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutHeight:I

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    .line 82
    :cond_2
    const/high16 p3, 0x3f800000    # 1.0f

    .line 84
    :cond_3
    if-eqz p7, :cond_6

    .line 86
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p7

    iget v8, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move-object/from16 v0, p7

    iget v9, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-virtual {v7, p3, p3, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 94
    .end local v5    # "values":[F
    .end local v6    # "zoomScale":F
    :cond_4
    :goto_0
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mFlagRotate:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz p4, :cond_7

    .line 95
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {v0, v1, v4}, Lcn/jingling/lib/textbubble/MyPoint;->getSinCos(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v2

    .line 97
    .local v2, "angle":Lcn/jingling/lib/textbubble/MyPoint;
    iget v7, v2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v8, v2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-virtual {p0, v7, v8}, Lcn/jingling/lib/textbubble/GroundImage;->rotateImageView(FF)V

    .line 110
    .end local v2    # "angle":Lcn/jingling/lib/textbubble/MyPoint;
    :cond_5
    :goto_1
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 111
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->invalidate()V

    .line 115
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 116
    invoke-direct {p0, v3}, Lcn/jingling/lib/textbubble/GroundImage;->updateObjects(Landroid/graphics/Matrix;)V

    .line 117
    return-void

    .line 90
    .restart local v5    # "values":[F
    .restart local v6    # "zoomScale":F
    :cond_6
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v8, v4, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v9, v4, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-virtual {v7, p3, p3, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 98
    .end local v5    # "values":[F
    .end local v6    # "zoomScale":F
    :cond_7
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mFlagMove:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 100
    iget-object v7, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1
.end method

.method public zoom(F)Landroid/graphics/Matrix;
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 401
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    sget v2, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcn/jingling/lib/textbubble/GroundImage;->mLayoutHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v0, v2, v3}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 402
    .local v0, "midPoint":Lcn/jingling/lib/textbubble/MyPoint;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 404
    .local v1, "zoomMatrix":Landroid/graphics/Matrix;
    iget v2, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v3, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 403
    invoke-virtual {v1, p1, p1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 405
    iget-object v2, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 406
    iget-object v2, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/jingling/lib/textbubble/GroundImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 407
    iget-object v2, p0, Lcn/jingling/lib/textbubble/GroundImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 409
    return-object v1
.end method
