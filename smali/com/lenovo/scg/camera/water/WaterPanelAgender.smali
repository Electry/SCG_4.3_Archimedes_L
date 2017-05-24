.class public Lcom/lenovo/scg/camera/water/WaterPanelAgender;
.super Lcom/lenovo/scg/camera/water/WaterPanel;
.source "WaterPanelAgender.java"

# interfaces
.implements Lcom/lenovo/scg/camera/water/WaterAssist$OnFaceDetectDoneListener;


# static fields
.field private static final AGE_1:I = 0x9

.field private static final AGE_2:I = 0x13

.field private static final AGE_3:I = 0x1d

.field private static final AGE_4:I = 0x27

.field private static final AGE_5:I = 0x31

.field private static final AGE_6:I = 0x3b

.field private static final TAG:Ljava/lang/String; = "WaterPanelAgender"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

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

    .line 150
    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mRealParentView:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mParentView:Landroid/view/ViewGroup;

    const v4, 0x7f10017d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mRealParentView:Landroid/widget/LinearLayout;

    .line 154
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

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
    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mRealParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    const v3, 0x7f100187

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mImageView:Landroid/widget/ImageView;

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

    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

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
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mRealParentView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mRealParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mRealParentView:Landroid/widget/LinearLayout;

    .line 166
    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mImageView:Landroid/widget/ImageView;

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
    .line 231
    const-string v11, "WaterPanelAgender"

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

    .line 233
    const/16 v11, 0x10e

    move/from16 v0, p2

    if-eq v0, v11, :cond_0

    const/16 v11, 0xb4

    move/from16 v0, p2

    if-ne v0, v11, :cond_5

    .line 234
    :cond_0
    const/16 p2, 0x5a

    .line 239
    :cond_1
    :goto_0
    iget-object v11, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 241
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
    iget-object v11, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09013b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 253
    .local v4, "left":I
    iget-object v11, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v11

    const-string v12, "camera_front_setting_picture_size_key"

    iget-object v13, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v13}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v13

    const v14, 0x7f0f002d

    invoke-virtual {v13, v14}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, "valuePictureSize":Ljava/lang/String;
    const-string v11, "WaterPanelAgender"

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
    iget-object v11, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

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

    .line 269
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "left":I
    .end local v5    # "srcH":I
    .end local v7    # "valuePictureSize":Ljava/lang/String;
    .end local v8    # "waterH":I
    .end local v9    # "waterW":I
    .end local v10    # "watermarkRo":Landroid/graphics/Bitmap;
    :cond_4
    return-void

    .line 235
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    if-nez p2, :cond_1

    .line 236
    const/16 p2, 0x10e

    goto/16 :goto_0
.end method

.method public enterWaterPanel()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->addViewToParent()V

    .line 49
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->initWaterAssist()V

    .line 50
    return-void
.end method

.method public exitWaterPanel()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->releaseWaterAssist()V

    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->releaseViewToParent()V

    .line 56
    return-void
.end method

.method public getDataType()Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;->FACE_CALLBACK:Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;

    return-object v0
.end method

.method public loadImage(II)I
    .locals 6
    .param p1, "gender"    # I
    .param p2, "age"    # I

    .prologue
    const/16 v5, 0x31

    const/16 v4, 0x27

    const/16 v3, 0x1d

    const/16 v2, 0x13

    const/16 v1, 0x9

    .line 77
    if-nez p1, :cond_6

    .line 78
    if-lez p2, :cond_0

    if-gt p2, v1, :cond_0

    .line 81
    const v0, 0x7f02018a

    .line 141
    :goto_0
    return v0

    .line 82
    :cond_0
    if-ge v1, p2, :cond_1

    if-gt p2, v2, :cond_1

    .line 85
    const v0, 0x7f02018b

    goto :goto_0

    .line 86
    :cond_1
    if-ge v2, p2, :cond_2

    if-gt p2, v3, :cond_2

    .line 89
    const v0, 0x7f02018c

    goto :goto_0

    .line 90
    :cond_2
    if-ge v3, p2, :cond_3

    if-gt p2, v4, :cond_3

    .line 93
    const v0, 0x7f02018d

    goto :goto_0

    .line 94
    :cond_3
    if-ge v4, p2, :cond_4

    if-gt p2, v5, :cond_4

    .line 97
    const v0, 0x7f02018e

    goto :goto_0

    .line 98
    :cond_4
    if-ge v5, p2, :cond_5

    const/16 v0, 0x3b

    if-gt p2, v0, :cond_5

    .line 101
    const v0, 0x7f02018f

    goto :goto_0

    .line 105
    :cond_5
    const v0, 0x7f02018f

    goto :goto_0

    .line 109
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 110
    if-lez p2, :cond_7

    if-gt p2, v1, :cond_7

    .line 113
    const v0, 0x7f020184

    goto :goto_0

    .line 114
    :cond_7
    if-ge v1, p2, :cond_8

    if-gt p2, v2, :cond_8

    .line 117
    const v0, 0x7f020185

    goto :goto_0

    .line 118
    :cond_8
    if-ge v2, p2, :cond_9

    if-gt p2, v3, :cond_9

    .line 121
    const v0, 0x7f020186

    goto :goto_0

    .line 122
    :cond_9
    if-ge v3, p2, :cond_a

    if-gt p2, v4, :cond_a

    .line 125
    const v0, 0x7f020187

    goto :goto_0

    .line 126
    :cond_a
    if-ge v4, p2, :cond_b

    if-gt p2, v5, :cond_b

    .line 129
    const v0, 0x7f020188

    goto :goto_0

    .line 130
    :cond_b
    if-ge v5, p2, :cond_c

    const/16 v0, 0x3b

    if-gt p2, v0, :cond_c

    .line 133
    const v0, 0x7f020189

    goto :goto_0

    .line 137
    :cond_c
    const v0, 0x7f020189

    goto :goto_0

    .line 141
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/camera/water/WaterPanel;->loadImage(II)I

    move-result v0

    goto :goto_0
.end method

.method public onCaptureStartHint()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f0201cb

    return v0
.end method

.method public onFaceDetectDone(I[I[I)V
    .locals 4
    .param p1, "number"    # I
    .param p2, "gender"    # [I
    .param p3, "age"    # [I

    .prologue
    const/4 v2, 0x0

    .line 173
    const/4 v0, -0x1

    .line 175
    .local v0, "resIdDrawable":I
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 176
    const-string v1, "WaterPanelAgender"

    const-string/jumbo v2, "onFaceDetectDone, mImageView == null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 181
    const-string v1, "WaterPanelAgender"

    const-string/jumbo v2, "onFaceDetectDone, number < 1 !!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->onCaptureStartHint()I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 187
    :cond_2
    if-eqz p2, :cond_3

    if-nez p3, :cond_4

    .line 188
    :cond_3
    const-string v1, "WaterPanelAgender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFaceDetectDone, gender = "

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

    goto :goto_0

    .line 221
    :cond_4
    aget v1, p2, v2

    aget v2, p3, v2

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->loadImage(II)I

    move-result v0

    .line 222
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelAgender;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
