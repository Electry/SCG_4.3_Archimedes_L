.class public Lcom/lenovo/scg/camera/mode/ScreenCapture;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V
    .locals 2
    .param p1, "module"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 45
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mCanvas:Landroid/graphics/Canvas;

    .line 47
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mPaint:Landroid/graphics/Paint;

    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 52
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mCanvas:Landroid/graphics/Canvas;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    return-void
.end method

.method private decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 363
    if-nez p2, :cond_0

    .line 373
    :goto_0
    return-object v3

    .line 365
    :cond_0
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 366
    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    .line 367
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 368
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iget v4, v2, Landroid/util/TypedValue;->density:I

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 369
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 370
    .end local v1    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "value":Landroid/util/TypedValue;
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private drawChildView(II)V
    .locals 19
    .param p1, "nViewId"    # I
    .param p2, "nResId"    # I

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v13}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    .line 166
    .local v2, "act":Lcom/lenovo/scg/camera/CameraActivity;
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 167
    .local v8, "imgView":Lcom/lenovo/scg/camera/ui/RotateImageView;
    if-nez v8, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 172
    .local v12, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v1}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 173
    .local v6, "bmpView":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 175
    .local v4, "backgroundBmp":Landroid/graphics/Bitmap;
    if-nez v6, :cond_5

    .line 176
    invoke-virtual {v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 177
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 178
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_2

    if-eqz v3, :cond_0

    .line 181
    :cond_2
    if-eqz v7, :cond_3

    .line 182
    invoke-static {v7}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 184
    :cond_3
    if-eqz v3, :cond_4

    .line 185
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 187
    :cond_4
    if-nez v6, :cond_5

    if-eqz v4, :cond_0

    .line 191
    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getDegree()I

    move-result v13

    neg-int v9, v13

    .line 192
    .local v9, "nDegree":I
    if-eqz v9, :cond_6

    .line 193
    invoke-static {v6, v9}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 194
    .local v5, "bmpNew":Landroid/graphics/Bitmap;
    move-object v6, v5

    .line 197
    .end local v5    # "bmpNew":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->getViewPosition(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v10

    .line 198
    .local v10, "rcDst":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 199
    .local v11, "rcSrc":Landroid/graphics/Rect;
    const/4 v13, 0x0

    iput v13, v11, Landroid/graphics/Rect;->left:I

    .line 200
    const/4 v13, 0x0

    iput v13, v11, Landroid/graphics/Rect;->top:I

    .line 201
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iput v13, v11, Landroid/graphics/Rect;->right:I

    .line 202
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    iput v13, v11, Landroid/graphics/Rect;->bottom:I

    .line 204
    if-eqz v4, :cond_7

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mCanvas:Landroid/graphics/Canvas;

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v4, v14, v10, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 207
    :cond_7
    if-eqz v6, :cond_8

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v6, v11, v10, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 210
    :cond_8
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    if-eqz v4, :cond_0

    .line 212
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private drawModeNameText([I)V
    .locals 26
    .param p1, "modeTextPosition"    # [I

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/camera/PhotoUI;->getModeStatusBar()Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    move-result-object v5

    .line 278
    .local v5, "bar":Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;
    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getCurrentDegree()I

    move-result v21

    move/from16 v0, v21

    neg-int v14, v0

    .line 280
    .local v14, "nDegree":I
    rem-int/lit16 v0, v14, 0xb4

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v9

    .line 284
    .local v9, "context":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 285
    .local v19, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getModeTextView()Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getWidth()I

    move-result v20

    .line 286
    .local v20, "width":I
    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getModeTextView()Landroid/widget/TextView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    .line 287
    .local v11, "height":I
    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 288
    .local v16, "quality":Landroid/graphics/Bitmap$Config;
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-static {v0, v1, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 289
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 290
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 292
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    .line 293
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 295
    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getModeName()Ljava/lang/String;

    move-result-object v12

    .line 296
    .local v12, "modeName":Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 297
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 298
    .local v15, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getModeTextView()Landroid/widget/TextView;

    move-result-object v13

    .line 299
    .local v13, "modeTextView":Landroid/widget/TextView;
    if-eqz v13, :cond_2

    .line 300
    invoke-virtual {v13}, Landroid/widget/TextView;->getTextSize()F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 301
    invoke-virtual {v13}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    :cond_2
    invoke-virtual {v15}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 304
    .local v10, "fm":Landroid/graphics/Paint$FontMetrics;
    const/16 v21, 0x0

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v23, v0

    add-float v22, v22, v23

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v12, v0, v1, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 305
    invoke-static {v6, v14}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 306
    .local v7, "bmpNew":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Rect;

    const/16 v21, 0x0

    aget v21, p1, v21

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    sub-int v21, v21, v22

    const/16 v22, 0x1

    aget v22, p1, v22

    const/16 v23, 0x0

    aget v23, p1, v23

    const/16 v24, 0x1

    aget v24, p1, v24

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    add-int v24, v24, v25

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 307
    .local v17, "rcDst":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 308
    .local v18, "rcSrc":Landroid/graphics/Rect;
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 309
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 310
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 311
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 313
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v21

    if-nez v21, :cond_3

    .line 314
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 316
    :cond_3
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v21

    if-nez v21, :cond_0

    .line 317
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private drawModeStatusBar()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 248
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/PhotoUI;->getModeStatusBar()Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    move-result-object v1

    .line 249
    .local v1, "bar":Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;
    if-nez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    .line 252
    .local v0, "act":Lcom/lenovo/scg/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 253
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getDrawableCurID()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 254
    .local v3, "bmpView":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 255
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getCurrentDegree()I

    move-result v8

    neg-int v4, v8

    .line 256
    .local v4, "nDegree":I
    if-eqz v4, :cond_2

    .line 257
    invoke-static {v3, v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 258
    .local v2, "bmpNew":Landroid/graphics/Bitmap;
    move-object v3, v2

    .line 261
    .end local v2    # "bmpNew":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getModeIconPosition()Landroid/graphics/Rect;

    move-result-object v5

    .line 262
    .local v5, "rcDst":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 263
    .local v6, "rcSrc":Landroid/graphics/Rect;
    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 264
    iput v9, v6, Landroid/graphics/Rect;->top:I

    .line 265
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v6, Landroid/graphics/Rect;->right:I

    .line 266
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 268
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v6, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 269
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 271
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getModeTextPosition()[I

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawModeNameText([I)V

    goto :goto_0
.end method

.method private drawShortcut()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 325
    const-string v12, "enter drawShortCut"

    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 326
    iget-object v12, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v12}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 327
    .local v10, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .line 328
    .local v3, "function":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->getShortcutView()Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    move-result-object v11

    .line 329
    .local v11, "sv":Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    if-nez v11, :cond_1

    .line 355
    :cond_0
    return-void

    .line 332
    :cond_1
    invoke-virtual {v11}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getDrawableAndScreenRectMap()Ljava/util/HashMap;

    move-result-object v5

    .line 333
    .local v5, "mapViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Rect;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 334
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Rect;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 335
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 336
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Rect;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 337
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 338
    .local v8, "rcPos":Landroid/graphics/Rect;
    invoke-virtual {v11, v7}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getDrawableId(Ljava/lang/String;)I

    move-result v12

    invoke-direct {p0, v10, v12}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 340
    .local v1, "bmpView":Landroid/graphics/Bitmap;
    iget-object v12, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v12}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getOrientation()I

    move-result v12

    neg-int v6, v12

    .line 341
    .local v6, "nDegree":I
    if-eqz v6, :cond_2

    .line 342
    invoke-static {v1, v6}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 343
    .local v0, "bmpNew":Landroid/graphics/Bitmap;
    move-object v1, v0

    .line 346
    .end local v0    # "bmpNew":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 347
    .local v9, "rcSrc":Landroid/graphics/Rect;
    iput v14, v9, Landroid/graphics/Rect;->left:I

    .line 348
    iput v14, v9, Landroid/graphics/Rect;->top:I

    .line 349
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iput v12, v9, Landroid/graphics/Rect;->right:I

    .line 350
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 352
    iget-object v12, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v13, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v9, v8, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 353
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private drawThumbnail()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 219
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v4

    .line 220
    .local v4, "btnThumbnail":Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getThumb()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    move-object v3, v0

    .line 225
    .local v3, "bmpView":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getDegree()I

    move-result v8

    neg-int v5, v8

    .line 226
    .local v5, "nDegree":I
    const/4 v1, 0x0

    .line 227
    .local v1, "bmpDel":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    .line 228
    invoke-static {v3, v5}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->rotateBitmapNoRecycle(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 229
    .local v2, "bmpNew":Landroid/graphics/Bitmap;
    move-object v3, v2

    .line 230
    move-object v1, v2

    .line 233
    .end local v2    # "bmpNew":Landroid/graphics/Bitmap;
    :cond_2
    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->getViewPosition(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    .line 234
    .local v6, "rcDst":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 235
    .local v7, "rcSrc":Landroid/graphics/Rect;
    iput v9, v7, Landroid/graphics/Rect;->left:I

    .line 236
    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 237
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 238
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 240
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v7, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 241
    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private getViewPosition(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 143
    .local v1, "rc":Landroid/graphics/Rect;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 144
    .local v0, "pos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 147
    instance-of v2, p1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v2, :cond_0

    .line 148
    check-cast p1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getDrawablePos(Landroid/graphics/Rect;)V

    .line 149
    iget v2, v1, Landroid/graphics/Rect;->left:I

    aget v3, v0, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 150
    iget v2, v1, Landroid/graphics/Rect;->top:I

    aget v3, v0, v5

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 151
    iget v2, v1, Landroid/graphics/Rect;->right:I

    aget v3, v0, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 152
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    aget v3, v0, v5

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 160
    :goto_0
    return-object v1

    .line 154
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    aget v2, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 155
    aget v2, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 156
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 157
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private savePng(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSdcardPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "screen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "path":Ljava/lang/String;
    const-string/jumbo v1, "now"

    const-string v2, ".png"

    invoke-static {v0, v1, p1, v2}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->saveBitmapToFile(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 360
    return-void
.end method


# virtual methods
.method public creatEmptyBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 127
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    .line 128
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 129
    .local v5, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 130
    .local v4, "rc":Landroid/graphics/Rect;
    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int v6, v7, v8

    .line 131
    .local v6, "width":I
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v7, v8

    .line 132
    .local v2, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 133
    .local v3, "quality":Landroid/graphics/Bitmap$Config;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v7, v6, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 135
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 137
    return-object v0
.end method

.method public getCurrentScreen()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const v8, 0x7f02021d

    const v7, 0x7f02021a

    const v6, 0x7f10015f

    const/4 v5, 0x0

    const v4, 0x7f10015c

    .line 59
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->creatEmptyBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, "bmpBk":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 63
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getFunctionManager()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 64
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    .line 65
    .local v1, "nowMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v2, :cond_2

    .line 66
    :cond_0
    const v2, 0x7f10028e

    const v3, 0x7f020268

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 67
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    const v2, 0x7f020222

    invoke-direct {p0, v4, v2}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 72
    :goto_0
    const v2, 0x7f10015d

    const v3, 0x7f0203d6

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 73
    const v2, 0x7f1002a3

    const v3, 0x7f02039a

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 74
    const v2, 0x7f0200ec

    invoke-direct {p0, v6, v2}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 75
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawThumbnail()V

    .line 76
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawShortcut()V

    .line 123
    .end local v1    # "nowMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :goto_1
    return-object v0

    .line 70
    .restart local v1    # "nowMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_1
    const v2, 0x7f020225

    invoke-direct {p0, v4, v2}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    const v2, 0x7f020222

    invoke-direct {p0, v4, v2}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 85
    :goto_2
    invoke-direct {p0, v6, v5}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 86
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawThumbnail()V

    .line 87
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawModeStatusBar()V

    goto :goto_1

    .line 83
    :cond_3
    const v2, 0x7f020225

    invoke-direct {p0, v4, v2}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    goto :goto_2

    .line 92
    .end local v1    # "nowMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v2, v3, :cond_7

    .line 94
    :cond_5
    const v2, 0x7f10028e

    const v3, 0x7f0200bb

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 95
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 96
    invoke-direct {p0, v4, v7}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 100
    :goto_3
    const v2, 0x7f10015d

    const v3, 0x7f0203d6

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 101
    const v2, 0x7f0200da

    invoke-direct {p0, v6, v2}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 102
    const v2, 0x7f1002a3

    const v3, 0x7f02039a

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 103
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawThumbnail()V

    goto :goto_1

    .line 98
    :cond_6
    invoke-direct {p0, v4, v8}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    goto :goto_3

    .line 109
    :cond_7
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ScreenCapture;->mModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 110
    invoke-direct {p0, v4, v7}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 114
    :goto_4
    invoke-direct {p0, v6, v5}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    .line 115
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawThumbnail()V

    .line 116
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawModeStatusBar()V

    goto/16 :goto_1

    .line 112
    :cond_8
    invoke-direct {p0, v4, v8}, Lcom/lenovo/scg/camera/mode/ScreenCapture;->drawChildView(II)V

    goto :goto_4
.end method
