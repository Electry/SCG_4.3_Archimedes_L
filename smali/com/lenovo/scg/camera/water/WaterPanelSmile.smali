.class public Lcom/lenovo/scg/camera/water/WaterPanelSmile;
.super Lcom/lenovo/scg/camera/water/WaterPanel;
.source "WaterPanelSmile.java"


# static fields
.field private static final SMILE_1:I = 0x13

.field private static final SMILE_2:I = 0x27

.field private static final SMILE_3:I = 0x3b

.field private static final SMILE_4:I = 0x4f

.field private static final SMILE_5:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WaterPanelSmile"


# instance fields
.field private mChildView:Landroid/widget/FrameLayout;

.field private mCurrentIndex:I

.field private mImageView:Landroid/widget/ImageView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mOldIndex:I

.field private mRateImageView1:Landroid/widget/ImageView;

.field private mRateImageView2:Landroid/widget/ImageView;

.field private mRateImageView3:Landroid/widget/ImageView;

.field private mRealParentView:Landroid/widget/LinearLayout;

.field private mSmileListener:Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanel;-><init>()V

    .line 194
    new-instance v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/water/WaterPanelSmile$1;-><init>(Lcom/lenovo/scg/camera/water/WaterPanelSmile;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mSmileListener:Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/water/WaterPanelSmile;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/water/WaterPanelSmile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterPanelSmile;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/water/WaterPanelSmile;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/water/WaterPanelSmile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterPanelSmile;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/water/WaterPanelSmile;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterPanelSmile;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->removeViewToParent()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/water/WaterPanelSmile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterPanelSmile;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->addViewToParent(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/water/WaterPanelSmile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterPanelSmile;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->loadRate(I)V

    return-void
.end method

.method private addViewToParent(I)V
    .locals 3
    .param p1, "childResId"    # I

    .prologue
    const/4 v2, -0x1

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRealParentView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f10017f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRealParentView:Landroid/widget/LinearLayout;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 229
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    .line 236
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRealParentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    :cond_2
    return-void

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    const v1, 0x7f100188

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    const v1, 0x7f100189

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView2:Landroid/widget/ImageView;

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    const v1, 0x7f10018a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    const v1, 0x7f10018b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView2:Landroid/widget/ImageView;

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    const v1, 0x7f10018c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    const v1, 0x7f10018d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView2:Landroid/widget/ImageView;

    goto :goto_0

    .line 253
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    const v1, 0x7f10018e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    const v1, 0x7f10018f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView2:Landroid/widget/ImageView;

    goto :goto_0

    .line 258
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    const v1, 0x7f100191

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView2:Landroid/widget/ImageView;

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    const v1, 0x7f100192

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView3:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCurrentImage(Landroid/graphics/Canvas;I)V
    .locals 49
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "orientation"    # I

    .prologue
    .line 415
    const/16 v45, 0x10e

    move/from16 v0, p2

    move/from16 v1, v45

    if-eq v0, v1, :cond_0

    const/16 v45, 0xb4

    move/from16 v0, p2

    move/from16 v1, v45

    if-ne v0, v1, :cond_d

    .line 416
    :cond_0
    const/16 p2, 0x5a

    .line 421
    :cond_1
    :goto_0
    const/16 v21, -0x1

    .line 423
    .local v21, "resId":I
    const/16 v16, 0x0

    .line 424
    .local v16, "leftImage":I
    const/16 v24, 0x0

    .line 426
    .local v24, "topImage":I
    const/16 v18, 0x0

    .line 427
    .local v18, "leftRate1":I
    const/16 v26, 0x0

    .line 428
    .local v26, "topRate1":I
    const/16 v19, 0x0

    .line 429
    .local v19, "leftRate2":I
    const/16 v27, 0x0

    .line 430
    .local v27, "topRate2":I
    const/16 v20, 0x0

    .line 431
    .local v20, "leftRate3":I
    const/16 v28, 0x0

    .line 432
    .local v28, "topRate3":I
    const/16 v17, 0x0

    .line 433
    .local v17, "leftRate":I
    const/16 v25, 0x0

    .line 435
    .local v25, "topRate":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    move/from16 v45, v0

    packed-switch v45, :pswitch_data_0

    .line 501
    const v21, 0x7f0201d1

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090169

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 507
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v45

    const-string v46, "camera_front_setting_picture_size_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v47, v0

    invoke-interface/range {v47 .. v47}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v47

    const v48, 0x7f0f002d

    invoke-virtual/range {v47 .. v48}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v45 .. v47}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 509
    .local v29, "valuePictureSize":Ljava/lang/String;
    const-string v45, "WaterPanelSmile"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "drawWater, valuePictureSize = "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v45, "16x9"

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_2

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090139

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 512
    .local v5, "Left169":I
    add-int v16, v16, v5

    .line 513
    add-int v18, v18, v5

    .line 514
    add-int v19, v19, v5

    .line 515
    add-int v20, v20, v5

    .line 516
    add-int v17, v17, v5

    .line 519
    .end local v5    # "Left169":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v23

    .line 520
    .local v23, "srcW":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v22

    .line 522
    .local v22, "srcH":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 523
    .local v6, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 524
    .local v11, "bm":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    invoke-static {v11, v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v41

    .line 525
    .local v41, "watermarkRo":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    .line 527
    .local v36, "waterW":I
    if-nez v24, :cond_3

    .line 528
    sub-int v45, v22, v36

    div-int/lit8 v24, v45, 0x2

    .line 531
    :cond_3
    const/16 v45, 0x10e

    move/from16 v0, p2

    move/from16 v1, v45

    if-ne v0, v1, :cond_4

    .line 532
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    .line 533
    .local v30, "waterH":I
    sub-int v45, v23, v16

    sub-int v16, v45, v30

    .line 534
    sub-int v45, v22, v36

    div-int/lit8 v45, v45, 0x2

    move/from16 v0, v24

    move/from16 v1, v45

    if-eq v0, v1, :cond_4

    .line 535
    sub-int v45, v22, v24

    sub-int v24, v45, v36

    .line 539
    .end local v30    # "waterH":I
    :cond_4
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v45, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 540
    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Bitmap;->recycle()V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ImageView;->getVisibility()I

    move-result v45

    if-nez v45, :cond_6

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 545
    .local v7, "bd1":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 546
    .local v12, "bm1":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v42

    .line 548
    .local v42, "watermarkRo1":Landroid/graphics/Bitmap;
    const/16 v45, 0x10e

    move/from16 v0, p2

    move/from16 v1, v45

    if-ne v0, v1, :cond_5

    .line 549
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    .line 550
    .local v31, "waterH1":I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v37

    .line 551
    .local v37, "waterW1":I
    sub-int v45, v23, v18

    sub-int v18, v45, v31

    .line 552
    sub-int v45, v22, v26

    sub-int v26, v45, v37

    .line 555
    .end local v31    # "waterH1":I
    .end local v37    # "waterW1":I
    :cond_5
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v45, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 556
    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Bitmap;->recycle()V

    .line 559
    .end local v7    # "bd1":Landroid/graphics/drawable/BitmapDrawable;
    .end local v12    # "bm1":Landroid/graphics/Bitmap;
    .end local v42    # "watermarkRo1":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView2:Landroid/widget/ImageView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_8

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView2:Landroid/widget/ImageView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 561
    .local v8, "bd2":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 562
    .local v13, "bm2":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    invoke-static {v13, v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v43

    .line 564
    .local v43, "watermarkRo2":Landroid/graphics/Bitmap;
    const/16 v45, 0x10e

    move/from16 v0, p2

    move/from16 v1, v45

    if-ne v0, v1, :cond_7

    .line 565
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    .line 566
    .local v32, "waterH2":I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v38

    .line 567
    .local v38, "waterW2":I
    sub-int v45, v23, v19

    sub-int v19, v45, v32

    .line 568
    sub-int v45, v22, v27

    sub-int v27, v45, v38

    .line 571
    .end local v32    # "waterH2":I
    .end local v38    # "waterW2":I
    :cond_7
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v45, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 572
    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Bitmap;->recycle()V

    .line 575
    .end local v8    # "bd2":Landroid/graphics/drawable/BitmapDrawable;
    .end local v13    # "bm2":Landroid/graphics/Bitmap;
    .end local v43    # "watermarkRo2":Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView3:Landroid/widget/ImageView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView3:Landroid/widget/ImageView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ImageView;->getVisibility()I

    move-result v45

    if-nez v45, :cond_a

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView3:Landroid/widget/ImageView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 577
    .local v9, "bd3":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 578
    .local v14, "bm3":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v44

    .line 580
    .local v44, "watermarkRo3":Landroid/graphics/Bitmap;
    const/16 v45, 0x10e

    move/from16 v0, p2

    move/from16 v1, v45

    if-ne v0, v1, :cond_9

    .line 581
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v33

    .line 582
    .local v33, "waterH3":I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v39

    .line 583
    .local v39, "waterW3":I
    sub-int v45, v23, v20

    sub-int v20, v45, v33

    .line 584
    sub-int v45, v22, v28

    sub-int v28, v45, v39

    .line 587
    .end local v33    # "waterH3":I
    .end local v39    # "waterW3":I
    :cond_9
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v45, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 588
    invoke-virtual/range {v44 .. v44}, Landroid/graphics/Bitmap;->recycle()V

    .line 591
    .end local v9    # "bd3":Landroid/graphics/drawable/BitmapDrawable;
    .end local v14    # "bm3":Landroid/graphics/Bitmap;
    .end local v44    # "watermarkRo3":Landroid/graphics/Bitmap;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    move/from16 v45, v0

    if-eqz v45, :cond_c

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f0201c0

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 593
    .local v10, "bdRate":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 594
    .local v15, "bmRate":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v40

    .line 596
    .local v40, "watermarkRate":Landroid/graphics/Bitmap;
    const/16 v45, 0x10e

    move/from16 v0, p2

    move/from16 v1, v45

    if-ne v0, v1, :cond_b

    .line 597
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    .line 598
    .local v34, "waterRH":I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    .line 599
    .local v35, "waterRW":I
    sub-int v45, v23, v17

    sub-int v17, v45, v34

    .line 600
    sub-int v45, v22, v25

    sub-int v25, v45, v35

    .line 603
    .end local v34    # "waterRH":I
    .end local v35    # "waterRW":I
    :cond_b
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v45, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 604
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Bitmap;->recycle()V

    .line 606
    .end local v10    # "bdRate":Landroid/graphics/drawable/BitmapDrawable;
    .end local v15    # "bmRate":Landroid/graphics/Bitmap;
    .end local v40    # "watermarkRate":Landroid/graphics/Bitmap;
    :cond_c
    return-void

    .line 417
    .end local v6    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "bm":Landroid/graphics/Bitmap;
    .end local v16    # "leftImage":I
    .end local v17    # "leftRate":I
    .end local v18    # "leftRate1":I
    .end local v19    # "leftRate2":I
    .end local v20    # "leftRate3":I
    .end local v21    # "resId":I
    .end local v22    # "srcH":I
    .end local v23    # "srcW":I
    .end local v24    # "topImage":I
    .end local v25    # "topRate":I
    .end local v26    # "topRate1":I
    .end local v27    # "topRate2":I
    .end local v28    # "topRate3":I
    .end local v29    # "valuePictureSize":Ljava/lang/String;
    .end local v36    # "waterW":I
    .end local v41    # "watermarkRo":Landroid/graphics/Bitmap;
    :cond_d
    if-nez p2, :cond_1

    .line 418
    const/16 p2, 0x10e

    goto/16 :goto_0

    .line 437
    .restart local v16    # "leftImage":I
    .restart local v17    # "leftRate":I
    .restart local v18    # "leftRate1":I
    .restart local v19    # "leftRate2":I
    .restart local v20    # "leftRate3":I
    .restart local v21    # "resId":I
    .restart local v24    # "topImage":I
    .restart local v25    # "topRate":I
    .restart local v26    # "topRate1":I
    .restart local v27    # "topRate2":I
    .restart local v28    # "topRate3":I
    :pswitch_0
    const v21, 0x7f0201cc

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090169

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090171

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 440
    move/from16 v18, v17

    .line 441
    move/from16 v19, v17

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090172

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090173

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090174

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 445
    goto/16 :goto_1

    .line 448
    :pswitch_1
    const v21, 0x7f0201cd

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f09016a

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f09016b

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090175

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 452
    move/from16 v18, v17

    .line 453
    move/from16 v19, v17

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090176

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090177

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090178

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 457
    goto/16 :goto_1

    .line 460
    :pswitch_2
    const v21, 0x7f0201ce

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f09016c

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090179

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 463
    move/from16 v18, v17

    .line 464
    move/from16 v19, v17

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f09017a

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f09017b

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f09017c

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 468
    goto/16 :goto_1

    .line 471
    :pswitch_3
    const v21, 0x7f0201cf

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f09016d

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f09016e

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f09017d

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 475
    move/from16 v18, v17

    .line 476
    move/from16 v19, v17

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f09017e

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f09017f

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090180

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 480
    goto/16 :goto_1

    .line 483
    :pswitch_4
    const v21, 0x7f0201d0

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f09016f

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090170

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090181

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 487
    move/from16 v18, v17

    .line 488
    move/from16 v19, v17

    .line 489
    move/from16 v20, v17

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090182

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090183

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090184

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView3:Landroid/widget/ImageView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView3:Landroid/widget/ImageView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ImageView;->getVisibility()I

    move-result v45

    if-nez v45, :cond_e

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090186

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    goto/16 :goto_1

    .line 496
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    const v46, 0x7f090185

    invoke-virtual/range {v45 .. v46}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 498
    goto/16 :goto_1

    .line 435
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getSmileLevel()I
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getSmileLevel()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private loadRate(I)V
    .locals 6
    .param p1, "smile"    # I

    .prologue
    const v5, 0x7f0201c2

    const v4, 0x7f0201c1

    .line 284
    const-string v1, "WaterPanelSmile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadRate, smile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView2:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 287
    :cond_0
    const-string v1, "WaterPanelSmile"

    const-string v2, "loadRate, mRateImageView1 = null!! || mRateImageView2 == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    if-nez p1, :cond_3

    .line 292
    const-string v1, "WaterPanelSmile"

    const-string/jumbo v2, "smile = 0!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 298
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    const/16 v1, 0x64

    if-ne p1, v1, :cond_4

    .line 301
    const-string v1, "WaterPanelSmile"

    const-string/jumbo v2, "smile = 100!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView3:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView3:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 313
    :cond_4
    div-int/lit8 v0, p1, 0xa

    .line 315
    .local v0, "shiwei":I
    const-string v1, "WaterPanelSmile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadRate, shiwei = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 362
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 366
    :pswitch_1
    const-string v1, "WaterPanelSmile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shiwei = 1, mRateImageView1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 371
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    const v2, 0x7f0201c3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 375
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    const v2, 0x7f0201c4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 379
    :pswitch_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    const v2, 0x7f0201c5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 383
    :pswitch_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    const v2, 0x7f0201c6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 387
    :pswitch_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    const v2, 0x7f0201c7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 391
    :pswitch_7
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    const v2, 0x7f0201c8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 395
    :pswitch_8
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    const v2, 0x7f0201c9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 399
    :pswitch_9
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    const v2, 0x7f0201ca

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private offSmileDetect()V
    .locals 5

    .prologue
    .line 100
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_beauty"

    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0f0029

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "value":Ljava/lang/String;
    const-string v1, "WaterPanelSmile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offSmileDetect, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "WaterPanelSmile"

    const-string/jumbo v2, "offSmileDetect, setSmileLevelDetectOff!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setSmileLevelDetectOff()V

    .line 112
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getInstance()Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->setSmileLevelChangedListener(Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;)V

    .line 113
    return-void
.end method

.method private openSmileDetect()V
    .locals 5

    .prologue
    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_beauty"

    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0f0029

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "value":Ljava/lang/String;
    const-string v1, "WaterPanelSmile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openSmileDetect, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "WaterPanelSmile"

    const-string/jumbo v2, "openSmileDetect, setSmileLevelDetectOn!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setSmileLevelDetectOn()V

    .line 96
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getInstance()Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mSmileListener:Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->setSmileLevelChangedListener(Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;)V

    .line 97
    return-void
.end method

.method private removeViewToParent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRealParentView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRealParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 275
    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mChildView:Landroid/widget/FrameLayout;

    .line 276
    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView1:Landroid/widget/ImageView;

    .line 277
    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView2:Landroid/widget/ImageView;

    .line 278
    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRateImageView3:Landroid/widget/ImageView;

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method public drawWater(Landroid/graphics/Canvas;I)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "orientation"    # I

    .prologue
    .line 408
    const-string v0, "WaterPanelSmile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->getCurrentImage(Landroid/graphics/Canvas;I)V

    .line 411
    return-void
.end method

.method public enterWaterPanel()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 69
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->openSmileDetect()V

    .line 70
    return-void
.end method

.method public exitWaterPanel()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->offSmileDetect()V

    .line 77
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->removeViewToParent()V

    .line 78
    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mRealParentView:Landroid/widget/LinearLayout;

    .line 79
    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 80
    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 81
    return-void
.end method

.method public getDataType()Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;->SMILE:Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;

    return-object v0
.end method

.method public loadImage(II)I
    .locals 5
    .param p1, "smile"    # I
    .param p2, "arg2"    # I

    .prologue
    const v0, 0x7f040039

    const/16 v4, 0x4f

    const/16 v3, 0x3b

    const/16 v2, 0x27

    const/16 v1, 0x13

    .line 128
    if-ltz p1, :cond_1

    if-gt p1, v1, :cond_1

    .line 129
    const/4 v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    .line 130
    iget v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    iget v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I

    if-eq v1, v2, :cond_0

    .line 131
    iget v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    iput v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I

    .line 132
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->removeViewToParent()V

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    if-ge v1, p1, :cond_3

    if-gt p1, v2, :cond_3

    .line 141
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    .line 142
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    iget v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I

    if-eq v0, v1, :cond_2

    .line 143
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    iput v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I

    .line 144
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->removeViewToParent()V

    .line 149
    :cond_2
    const v0, 0x7f04003a

    goto :goto_0

    .line 150
    :cond_3
    if-ge v2, p1, :cond_5

    if-gt p1, v3, :cond_5

    .line 152
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    .line 153
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    iget v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I

    if-eq v0, v1, :cond_4

    .line 154
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    iput v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I

    .line 155
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->removeViewToParent()V

    .line 160
    :cond_4
    const v0, 0x7f04003b

    goto :goto_0

    .line 161
    :cond_5
    if-ge v3, p1, :cond_7

    if-gt p1, v4, :cond_7

    .line 163
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    .line 164
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    iget v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I

    if-eq v0, v1, :cond_6

    .line 165
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    iput v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I

    .line 166
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->removeViewToParent()V

    .line 171
    :cond_6
    const v0, 0x7f04003c

    goto :goto_0

    .line 172
    :cond_7
    if-ge v4, p1, :cond_0

    const/16 v1, 0x64

    if-gt p1, v1, :cond_0

    .line 174
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    .line 175
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    iget v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I

    if-eq v0, v1, :cond_8

    .line 176
    iget v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mCurrentIndex:I

    iput v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->mOldIndex:I

    .line 177
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelSmile;->removeViewToParent()V

    .line 182
    :cond_8
    const v0, 0x7f04003d

    goto :goto_0
.end method

.method public onCaptureStartHint()I
    .locals 1

    .prologue
    .line 122
    const v0, 0x7f04003e

    return v0
.end method
