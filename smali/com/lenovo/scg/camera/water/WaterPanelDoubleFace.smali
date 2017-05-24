.class public Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;
.super Lcom/lenovo/scg/camera/water/WaterPanel;
.source "WaterPanelDoubleFace.java"

# interfaces
.implements Lcom/lenovo/scg/camera/water/WaterAssist$OnFaceDetectDoneListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WaterPanelDoubleFace"


# instance fields
.field private mCurrentResId:I

.field private mFaceNumber:I

.field private mImageView:Landroid/widget/ImageView;

.field private mNeedChangeImage:Z

.field private mRealParentView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanel;-><init>()V

    return-void
.end method

.method private addViewToParent()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 149
    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mRealParentView:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mParentView:Landroid/view/ViewGroup;

    const v4, 0x7f100181

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mRealParentView:Landroid/widget/LinearLayout;

    .line 153
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 156
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040038

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 157
    .local v0, "childView":Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mRealParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    const v3, 0x7f100187

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mImageView:Landroid/widget/ImageView;

    .line 160
    return-void
.end method

.method private initWaterAssist()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/lenovo/scg/camera/water/WaterAssist;->getInstance()Lcom/lenovo/scg/camera/water/WaterAssist;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/water/WaterAssist;->setOnFaceDetectDoneListener(Lcom/lenovo/scg/camera/water/WaterAssist$OnFaceDetectDoneListener;)V

    .line 60
    invoke-static {}, Lcom/lenovo/scg/camera/water/WaterAssist;->getInstance()Lcom/lenovo/scg/camera/water/WaterAssist;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/water/WaterAssist;->setPreviewCallbackManager(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)V

    .line 61
    invoke-static {}, Lcom/lenovo/scg/camera/water/WaterAssist;->getInstance()Lcom/lenovo/scg/camera/water/WaterAssist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/water/WaterAssist;->registPreviewCallback()V

    .line 62
    return-void
.end method

.method private releaseViewToParent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mRealParentView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mRealParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mRealParentView:Landroid/widget/LinearLayout;

    .line 166
    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mImageView:Landroid/widget/ImageView;

    .line 168
    :cond_0
    return-void
.end method

.method private releaseWaterAssist()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/lenovo/scg/camera/water/WaterAssist;->getInstance()Lcom/lenovo/scg/camera/water/WaterAssist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/water/WaterAssist;->unregistPreviewCallback()V

    .line 66
    return-void
.end method


# virtual methods
.method public drawWater(Landroid/graphics/Canvas;I)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "orientation"    # I

    .prologue
    .line 233
    const-string v11, "WaterPanelDoubleFace"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "drawWater, orientation = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/16 v11, 0x10e

    move/from16 v0, p2

    if-eq v0, v11, :cond_0

    const/16 v11, 0xb4

    move/from16 v0, p2

    if-ne v0, v11, :cond_5

    .line 236
    :cond_0
    const/16 p2, 0x5a

    .line 241
    :cond_1
    :goto_0
    iget-object v11, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 242
    .local v2, "bd":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_4

    .line 243
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 245
    .local v3, "bm":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 247
    .local v10, "watermarkRo":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    .line 248
    .local v5, "srcH":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 249
    .local v8, "waterH":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 250
    .local v9, "waterW":I
    const-string/jumbo v11, "panhui"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "drawWater, srcH = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", waterH = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v11, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09013c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 253
    .local v4, "left":I
    iget-object v11, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v11

    const-string v12, "camera_front_setting_picture_size_key"

    iget-object v13, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v13}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v13

    const v14, 0x7f0f002d

    invoke-virtual {v13, v14}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, "valuePictureSize":Ljava/lang/String;
    const-string v11, "WaterPanelDoubleFace"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "drawWater, valuePictureSize = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v11, "16x9"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 257
    iget-object v11, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090139

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 258
    .local v1, "Left169":I
    add-int/2addr v4, v1

    .line 261
    .end local v1    # "Left169":I
    :cond_2
    const/16 v11, 0x10e

    move/from16 v0, p2

    if-ne v0, v11, :cond_3

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    .line 263
    .local v6, "srcW":I
    sub-int v11, v6, v4

    sub-int v4, v11, v8

    .line 267
    .end local v6    # "srcW":I
    :cond_3
    int-to-float v11, v4

    sub-int v12, v5, v9

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 268
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "left":I
    .end local v5    # "srcH":I
    .end local v7    # "valuePictureSize":Ljava/lang/String;
    .end local v8    # "waterH":I
    .end local v9    # "waterW":I
    .end local v10    # "watermarkRo":Landroid/graphics/Bitmap;
    :cond_4
    return-void

    .line 237
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    if-nez p2, :cond_1

    .line 238
    const/16 p2, 0x10e

    goto/16 :goto_0
.end method

.method public enterWaterPanel()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->addViewToParent()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mNeedChangeImage:Z

    .line 46
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->initWaterAssist()V

    .line 47
    return-void
.end method

.method public exitWaterPanel()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mNeedChangeImage:Z

    .line 54
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->releaseWaterAssist()V

    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->releaseViewToParent()V

    .line 56
    return-void
.end method

.method public getDataType()Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;->FACE_CALLBACK:Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;

    return-object v0
.end method

.method public loadImage(II)I
    .locals 9
    .param p1, "gender1"    # I
    .param p2, "gender2"    # I

    .prologue
    const v3, 0x7f020193

    const v2, 0x7f020192

    const v1, 0x7f020191

    const/4 v8, 0x1

    .line 86
    const-string v4, "WaterPanelDoubleFace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadImage, gender1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", gender2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 90
    iput-boolean v8, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mNeedChangeImage:Z

    .line 94
    const v1, 0x7f020194

    .line 140
    :goto_0
    return v1

    .line 95
    :cond_0
    if-nez p1, :cond_1

    if-eq p2, v8, :cond_2

    :cond_1
    if-ne p1, v8, :cond_6

    if-nez p2, :cond_6

    .line 97
    :cond_2
    const-string v4, "WaterPanelDoubleFace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadImage, mNeedChangeImage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mNeedChangeImage:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mNeedChangeImage:Z

    if-eqz v4, :cond_5

    .line 100
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mNeedChangeImage:Z

    .line 101
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 102
    .local v0, "random":I
    const-string v4, "WaterPanelDoubleFace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "random = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-ne v0, v8, :cond_3

    .line 106
    iput v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mCurrentResId:I

    goto :goto_0

    .line 110
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 112
    iput v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mCurrentResId:I

    move v1, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 118
    iput v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mCurrentResId:I

    move v1, v3

    .line 121
    goto :goto_0

    .line 125
    .end local v0    # "random":I
    :cond_5
    const-string v1, "WaterPanelDoubleFace"

    const-string v2, "loadImage, mNeedChangeImage = false, return last one!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mCurrentResId:I

    goto :goto_0

    .line 129
    :cond_6
    if-ne p1, v8, :cond_7

    if-ne p2, v8, :cond_7

    .line 131
    iput-boolean v8, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mNeedChangeImage:Z

    .line 135
    const v1, 0x7f020190

    goto :goto_0

    .line 138
    :cond_7
    iput-boolean v8, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mNeedChangeImage:Z

    .line 140
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/camera/water/WaterPanel;->loadImage(II)I

    move-result v1

    goto :goto_0
.end method

.method public onCaptureStartHint()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mNeedChangeImage:Z

    .line 74
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mFaceNumber:I

    if-ge v0, v1, :cond_0

    .line 75
    const v0, 0x7f020195

    .line 80
    :goto_0
    return v0

    .line 76
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mFaceNumber:I

    if-ne v0, v1, :cond_1

    .line 77
    const v0, 0x7f020196

    goto :goto_0

    .line 80
    :cond_1
    invoke-super {p0}, Lcom/lenovo/scg/camera/water/WaterPanel;->onCaptureStartHint()I

    move-result v0

    goto :goto_0
.end method

.method public onFaceDetectDone(I[I[I)V
    .locals 4
    .param p1, "number"    # I
    .param p2, "gender"    # [I
    .param p3, "age"    # [I

    .prologue
    .line 173
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 174
    :cond_0
    const-string v1, "WaterPanelDoubleFace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gender = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", age = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 213
    const-string v1, "WaterPanelDoubleFace"

    const-string/jumbo v2, "onFaceDetectDone, mImageView == null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_2
    iput p1, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mFaceNumber:I

    .line 219
    const/4 v0, -0x1

    .line 221
    .local v0, "resIdDrawable":I
    iget v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mFaceNumber:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 222
    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->loadImage(II)I

    move-result v0

    .line 227
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/water/WaterPanelDoubleFace;->onCaptureStartHint()I

    move-result v0

    goto :goto_1
.end method
