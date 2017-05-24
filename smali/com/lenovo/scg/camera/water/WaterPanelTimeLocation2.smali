.class public Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;
.super Lcom/lenovo/scg/camera/water/WaterPanel;
.source "WaterPanelTimeLocation2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WaterPanelTimeLocation2"


# instance fields
.field private bdLocationListener:Lcom/baidu/location/BDLocationListener;

.field private mChildView:Landroid/widget/RelativeLayout;

.field private mDayView1:Landroid/widget/ImageView;

.field private mDayView2:Landroid/widget/ImageView;

.field private mLocationClient:Lcom/baidu/location/LocationClient;

.field private mMonthView:Landroid/widget/ImageView;

.field private mRealParentView:Landroid/widget/LinearLayout;

.field private mSeasonView:Landroid/widget/ImageView;

.field private mUserLocationText:Landroid/widget/TextView;

.field private mYearView1:Landroid/widget/ImageView;

.field private mYearView2:Landroid/widget/ImageView;

.field private mYearView3:Landroid/widget/ImageView;

.field private mYearView4:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanel;-><init>()V

    .line 588
    new-instance v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2$1;-><init>(Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->bdLocationListener:Lcom/baidu/location/BDLocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mUserLocationText:Landroid/widget/TextView;

    return-object v0
.end method

.method private addViewToParent(I)V
    .locals 4
    .param p1, "childResId"    # I

    .prologue
    .line 102
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 104
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    .line 106
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    const v3, 0x7f1001a3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 107
    .local v1, "locationll":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraConfig;->isShowWaterLocation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    const v3, 0x7f1001a4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mUserLocationText:Landroid/widget/TextView;

    .line 115
    .end local v1    # "locationll":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mRealParentView:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mParentView:Landroid/view/ViewGroup;

    const v3, 0x7f100185

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mRealParentView:Landroid/widget/LinearLayout;

    .line 117
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mRealParentView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    :cond_1
    return-void

    .line 110
    .restart local v1    # "locationll":Landroid/widget/LinearLayout;
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initLocation()V
    .locals 3

    .prologue
    .line 559
    new-instance v1, Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 560
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->bdLocationListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 561
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 569
    .local v0, "option":Lcom/baidu/location/LocationClientOption;
    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 570
    const-string v1, "all"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setAddrType(Ljava/lang/String;)V

    .line 571
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 572
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 574
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClient;->start()V

    .line 575
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClient;->requestLocation()I

    .line 576
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    const v1, 0x7f10019b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mMonthView:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    const v1, 0x7f10019c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mDayView1:Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    const v1, 0x7f10019d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mDayView2:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    const v1, 0x7f10019f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView1:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001a0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView2:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001a1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView3:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView4:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    const v1, 0x7f10019e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mSeasonView:Landroid/widget/ImageView;

    .line 141
    return-void
.end method

.method private releaseLocation()V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->bdLocationListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 586
    :cond_1
    return-void
.end method

.method private removeViewToParent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mRealParentView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mRealParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 125
    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mRealParentView:Landroid/widget/LinearLayout;

    .line 126
    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    .line 128
    :cond_0
    return-void
.end method

.method private setDay(I)V
    .locals 5
    .param p1, "day"    # I

    .prologue
    .line 446
    iget-object v4, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mDayView1:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mDayView2:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 454
    rem-int/lit8 v0, p1, 0xa

    .line 455
    .local v0, "gewei":I
    sub-int v4, p1, v0

    div-int/lit8 v3, v4, 0xa

    .line 457
    .local v3, "shiwei":I
    const/4 v2, -0x1

    .line 459
    .local v2, "resIdShiwei":I
    packed-switch v3, :pswitch_data_0

    .line 478
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mDayView1:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 480
    const/4 v1, -0x1

    .line 482
    .local v1, "resIdGewei":I
    packed-switch v0, :pswitch_data_1

    .line 526
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mDayView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 461
    .end local v1    # "resIdGewei":I
    :pswitch_0
    const v2, 0x7f0201a0

    .line 462
    goto :goto_1

    .line 465
    :pswitch_1
    const v2, 0x7f0201a1

    .line 466
    goto :goto_1

    .line 469
    :pswitch_2
    const v2, 0x7f0201a2

    .line 470
    goto :goto_1

    .line 473
    :pswitch_3
    const v2, 0x7f0201a3

    goto :goto_1

    .line 484
    .restart local v1    # "resIdGewei":I
    :pswitch_4
    const v1, 0x7f0201a0

    .line 485
    goto :goto_2

    .line 488
    :pswitch_5
    const v1, 0x7f0201a1

    .line 489
    goto :goto_2

    .line 492
    :pswitch_6
    const v1, 0x7f0201a2

    .line 493
    goto :goto_2

    .line 496
    :pswitch_7
    const v1, 0x7f0201a3

    .line 497
    goto :goto_2

    .line 500
    :pswitch_8
    const v1, 0x7f0201a4

    .line 501
    goto :goto_2

    .line 504
    :pswitch_9
    const v1, 0x7f0201a5

    .line 505
    goto :goto_2

    .line 508
    :pswitch_a
    const v1, 0x7f0201a6

    .line 509
    goto :goto_2

    .line 512
    :pswitch_b
    const v1, 0x7f0201a7

    .line 513
    goto :goto_2

    .line 516
    :pswitch_c
    const v1, 0x7f0201a8

    .line 517
    goto :goto_2

    .line 520
    :pswitch_d
    const v1, 0x7f0201a9

    goto :goto_2

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 482
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private setLocationData()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->initLocation()V

    .line 556
    return-void
.end method

.method private setMonth(I)V
    .locals 2
    .param p1, "month"    # I

    .prologue
    .line 384
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mMonthView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 388
    :cond_0
    const/4 v0, -0x1

    .line 390
    .local v0, "resId":I
    packed-switch p1, :pswitch_data_0

    .line 441
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mMonthView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 392
    :pswitch_0
    const v0, 0x7f0201aa

    .line 393
    goto :goto_1

    .line 396
    :pswitch_1
    const v0, 0x7f0201ae

    .line 397
    goto :goto_1

    .line 400
    :pswitch_2
    const v0, 0x7f0201af

    .line 401
    goto :goto_1

    .line 404
    :pswitch_3
    const v0, 0x7f0201b0

    .line 405
    goto :goto_1

    .line 408
    :pswitch_4
    const v0, 0x7f0201b1

    .line 409
    goto :goto_1

    .line 412
    :pswitch_5
    const v0, 0x7f0201b2

    .line 413
    goto :goto_1

    .line 416
    :pswitch_6
    const v0, 0x7f0201b3

    .line 417
    goto :goto_1

    .line 420
    :pswitch_7
    const v0, 0x7f0201b4

    .line 421
    goto :goto_1

    .line 424
    :pswitch_8
    const v0, 0x7f0201b5

    .line 425
    goto :goto_1

    .line 428
    :pswitch_9
    const v0, 0x7f0201ab

    .line 429
    goto :goto_1

    .line 432
    :pswitch_a
    const v0, 0x7f0201ac

    .line 433
    goto :goto_1

    .line 436
    :pswitch_b
    const v0, 0x7f0201ad

    goto :goto_1

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private setSenson(II)V
    .locals 5
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0x8

    const/4 v2, 0x5

    .line 532
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mSeasonView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 552
    :goto_0
    return-void

    .line 536
    :cond_0
    const/4 v0, -0x1

    .line 538
    .local v0, "resId":I
    const/4 v1, 0x2

    if-le p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 539
    const v0, 0x7f02019c

    .line 551
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mSeasonView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 541
    :cond_2
    if-lt p1, v2, :cond_3

    if-gt p1, v3, :cond_3

    .line 542
    const v0, 0x7f02019d

    goto :goto_1

    .line 544
    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    .line 545
    const v0, 0x7f02019b

    goto :goto_1

    .line 547
    :cond_4
    if-ge p1, v4, :cond_5

    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    .line 548
    :cond_5
    const v0, 0x7f02019e

    goto :goto_1
.end method

.method private setTimeData()V
    .locals 7

    .prologue
    .line 144
    iget-object v4, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mChildView:Landroid/widget/RelativeLayout;

    if-nez v4, :cond_0

    .line 164
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 149
    .local v2, "t":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 150
    iget v3, v2, Landroid/text/format/Time;->year:I

    .line 151
    .local v3, "year":I
    iget v4, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v4, 0x1

    .line 152
    .local v1, "month":I
    iget v0, v2, Landroid/text/format/Time;->monthDay:I

    .line 157
    .local v0, "day":I
    const-string v4, "WaterPanelTimeLocation2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setTimeData, year = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", month = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", day = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->setMonth(I)V

    .line 160
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->setDay(I)V

    .line 162
    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->setYear(I)V

    .line 163
    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->setSenson(II)V

    goto :goto_0
.end method

.method private setYear(I)V
    .locals 11
    .param p1, "year"    # I

    .prologue
    .line 168
    iget-object v8, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView1:Landroid/widget/ImageView;

    if-nez v8, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView2:Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 176
    iget-object v8, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView3:Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 180
    iget-object v8, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView4:Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 184
    rem-int/lit8 v1, p1, 0xa

    .line 185
    .local v1, "gewei":I
    rem-int/lit8 v8, p1, 0x64

    sub-int/2addr v8, v1

    div-int/lit8 v7, v8, 0xa

    .line 186
    .local v7, "shiwei":I
    rem-int/lit16 v8, p1, 0x3e8

    mul-int/lit8 v9, v7, 0xa

    add-int/2addr v9, v1

    sub-int/2addr v8, v9

    div-int/lit8 v0, v8, 0x64

    .line 187
    .local v0, "baiwei":I
    mul-int/lit8 v8, v0, 0x64

    sub-int v8, p1, v8

    mul-int/lit8 v9, v7, 0xa

    sub-int/2addr v8, v9

    sub-int/2addr v8, v1

    div-int/lit16 v2, v8, 0x3e8

    .line 189
    .local v2, "qianwei":I
    const-string v8, "WaterPanelTimeLocation2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "qianwei = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", baiwei = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", shiwei = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", gewei = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v5, -0x1

    .line 193
    .local v5, "resIdQianwei":I
    packed-switch v2, :pswitch_data_0

    .line 236
    :goto_1
    iget-object v8, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView1:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    const/4 v3, -0x1

    .line 240
    .local v3, "resIdBaiwei":I
    packed-switch v0, :pswitch_data_1

    .line 283
    :goto_2
    iget-object v8, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView2:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    const/4 v6, -0x1

    .line 287
    .local v6, "resIdShiwei":I
    packed-switch v7, :pswitch_data_2

    .line 331
    :goto_3
    iget-object v8, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView3:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    const/4 v4, -0x1

    .line 335
    .local v4, "resIdGewei":I
    packed-switch v1, :pswitch_data_3

    .line 379
    :goto_4
    iget-object v8, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView4:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 195
    .end local v3    # "resIdBaiwei":I
    .end local v4    # "resIdGewei":I
    .end local v6    # "resIdShiwei":I
    :pswitch_0
    const v5, 0x7f0201b6

    .line 196
    goto :goto_1

    .line 199
    :pswitch_1
    const v5, 0x7f0201b7

    .line 200
    goto :goto_1

    .line 203
    :pswitch_2
    const v5, 0x7f0201b8

    .line 204
    goto :goto_1

    .line 207
    :pswitch_3
    const v5, 0x7f0201b9

    .line 208
    goto :goto_1

    .line 211
    :pswitch_4
    const v5, 0x7f0201ba

    .line 212
    goto :goto_1

    .line 215
    :pswitch_5
    const v5, 0x7f0201bb

    .line 216
    goto :goto_1

    .line 219
    :pswitch_6
    const v5, 0x7f0201bc

    .line 220
    goto :goto_1

    .line 223
    :pswitch_7
    const v5, 0x7f0201bd

    .line 224
    goto :goto_1

    .line 227
    :pswitch_8
    const v5, 0x7f0201be

    .line 228
    goto :goto_1

    .line 231
    :pswitch_9
    const v5, 0x7f0201bf

    goto :goto_1

    .line 242
    .restart local v3    # "resIdBaiwei":I
    :pswitch_a
    const v3, 0x7f0201b6

    .line 243
    goto :goto_2

    .line 246
    :pswitch_b
    const v3, 0x7f0201b7

    .line 247
    goto :goto_2

    .line 250
    :pswitch_c
    const v3, 0x7f0201b8

    .line 251
    goto :goto_2

    .line 254
    :pswitch_d
    const v3, 0x7f0201b9

    .line 255
    goto :goto_2

    .line 258
    :pswitch_e
    const v3, 0x7f0201ba

    .line 259
    goto :goto_2

    .line 262
    :pswitch_f
    const v3, 0x7f0201bb

    .line 263
    goto :goto_2

    .line 266
    :pswitch_10
    const v3, 0x7f0201bc

    .line 267
    goto :goto_2

    .line 270
    :pswitch_11
    const v3, 0x7f0201bd

    .line 271
    goto :goto_2

    .line 274
    :pswitch_12
    const v3, 0x7f0201be

    .line 275
    goto :goto_2

    .line 278
    :pswitch_13
    const v3, 0x7f0201bf

    goto :goto_2

    .line 289
    .restart local v6    # "resIdShiwei":I
    :pswitch_14
    const v6, 0x7f0201b6

    .line 290
    goto :goto_3

    .line 293
    :pswitch_15
    const v6, 0x7f0201b7

    .line 294
    goto :goto_3

    .line 297
    :pswitch_16
    const v6, 0x7f0201b8

    .line 298
    goto :goto_3

    .line 301
    :pswitch_17
    const v6, 0x7f0201b9

    .line 302
    goto :goto_3

    .line 305
    :pswitch_18
    const v6, 0x7f0201ba

    .line 306
    goto :goto_3

    .line 309
    :pswitch_19
    const v6, 0x7f0201bb

    .line 310
    goto :goto_3

    .line 313
    :pswitch_1a
    const v6, 0x7f0201bc

    .line 314
    goto :goto_3

    .line 317
    :pswitch_1b
    const v6, 0x7f0201bd

    .line 318
    goto :goto_3

    .line 321
    :pswitch_1c
    const v6, 0x7f0201be

    .line 322
    goto/16 :goto_3

    .line 325
    :pswitch_1d
    const v6, 0x7f0201bf

    goto/16 :goto_3

    .line 337
    .restart local v4    # "resIdGewei":I
    :pswitch_1e
    const v4, 0x7f0201b6

    .line 338
    goto/16 :goto_4

    .line 341
    :pswitch_1f
    const v4, 0x7f0201b7

    .line 342
    goto/16 :goto_4

    .line 345
    :pswitch_20
    const v4, 0x7f0201b8

    .line 346
    goto/16 :goto_4

    .line 349
    :pswitch_21
    const v4, 0x7f0201b9

    .line 350
    goto/16 :goto_4

    .line 353
    :pswitch_22
    const v4, 0x7f0201ba

    .line 354
    goto/16 :goto_4

    .line 357
    :pswitch_23
    const v4, 0x7f0201bb

    .line 358
    goto/16 :goto_4

    .line 361
    :pswitch_24
    const v4, 0x7f0201bc

    .line 362
    goto/16 :goto_4

    .line 365
    :pswitch_25
    const v4, 0x7f0201bd

    .line 366
    goto/16 :goto_4

    .line 369
    :pswitch_26
    const v4, 0x7f0201be

    .line 370
    goto/16 :goto_4

    .line 373
    :pswitch_27
    const v4, 0x7f0201bf

    goto/16 :goto_4

    .line 193
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

    .line 240
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 287
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    .line 335
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public drawWater(Landroid/graphics/Canvas;I)V
    .locals 84
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "orientation"    # I

    .prologue
    .line 620
    const-string v80, "WaterPanelTimeLocation2"

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v82, "orientation = "

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    move-object/from16 v0, v81

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-eq v0, v1, :cond_0

    const/16 v80, 0xb4

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_2

    .line 623
    :cond_0
    const/16 p2, 0x5a

    .line 628
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v80

    const-string v81, "camera_front_setting_picture_size_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v82, v0

    invoke-interface/range {v82 .. v82}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v82

    const v83, 0x7f0f002d

    invoke-virtual/range {v82 .. v83}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v82

    invoke-virtual/range {v80 .. v82}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 630
    .local v71, "valuePictureSize":Ljava/lang/String;
    const-string v80, "WaterPanelTimeLocation2"

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    const-string v82, "drawWater, valuePictureSize = "

    invoke-virtual/range {v81 .. v82}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    move-object/from16 v0, v81

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    invoke-static/range {v80 .. v81}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090139

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 632
    .local v6, "Left169":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f09013a

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 634
    .local v7, "Left1692":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v70

    .line 635
    .local v70, "srcW":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v69

    .line 638
    .local v69, "srcH":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mSeasonView:Landroid/widget/ImageView;

    move-object/from16 v80, v0

    invoke-virtual/range {v80 .. v80}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 639
    .local v10, "bd":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v10, :cond_3

    .line 852
    :goto_1
    return-void

    .line 624
    .end local v6    # "Left169":I
    .end local v7    # "Left1692":I
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v69    # "srcH":I
    .end local v70    # "srcW":I
    .end local v71    # "valuePictureSize":Ljava/lang/String;
    :cond_2
    if-nez p2, :cond_1

    .line 625
    const/16 p2, 0x10e

    goto/16 :goto_0

    .line 642
    .restart local v6    # "Left169":I
    .restart local v7    # "Left1692":I
    .restart local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v69    # "srcH":I
    .restart local v70    # "srcW":I
    .restart local v71    # "valuePictureSize":Ljava/lang/String;
    :cond_3
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    .line 643
    .local v21, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 644
    .local v22, "bm2":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090156

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v67

    .line 645
    .local v67, "seasonLeft":I
    const-string v80, "16x9"

    move-object/from16 v0, v71

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v80

    if-eqz v80, :cond_4

    .line 646
    add-int v67, v67, v6

    .line 648
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090157

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v68

    .line 650
    .local v68, "seasonTop":I
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_5

    .line 651
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v72

    .line 652
    .local v72, "waterH":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v73

    .line 653
    .local v73, "waterW":I
    sub-int v80, v70, v67

    sub-int v67, v80, v72

    .line 654
    sub-int v80, v69, v68

    sub-int v68, v80, v73

    .line 657
    .end local v72    # "waterH":I
    .end local v73    # "waterW":I
    :cond_5
    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v0, v68

    int-to-float v0, v0

    move/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v80

    move/from16 v3, v81

    move-object/from16 v4, v82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 658
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView1:Landroid/widget/ImageView;

    move-object/from16 v80, v0

    invoke-virtual/range {v80 .. v80}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    .line 662
    .local v17, "bdYear1":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v37

    .line 663
    .local v37, "bmYear1":Landroid/graphics/Bitmap;
    move-object/from16 v0, v37

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v38

    .line 664
    .local v38, "bmYear12":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090158

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v75

    .line 665
    .local v75, "yearLeft":I
    const-string v80, "16x9"

    move-object/from16 v0, v71

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v80

    if-eqz v80, :cond_6

    .line 666
    add-int v75, v75, v6

    .line 668
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090159

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v76

    .line 670
    .local v76, "yearTop1":I
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_7

    .line 671
    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v72

    .line 672
    .restart local v72    # "waterH":I
    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v73

    .line 673
    .restart local v73    # "waterW":I
    sub-int v80, v70, v75

    sub-int v75, v80, v72

    .line 674
    sub-int v80, v69, v76

    sub-int v76, v80, v73

    .line 676
    .end local v72    # "waterH":I
    .end local v73    # "waterW":I
    :cond_7
    move/from16 v0, v75

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v0, v76

    int-to-float v0, v0

    move/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move/from16 v2, v80

    move/from16 v3, v81

    move-object/from16 v4, v82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 677
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->recycle()V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView2:Landroid/widget/ImageView;

    move-object/from16 v80, v0

    invoke-virtual/range {v80 .. v80}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    check-cast v18, Landroid/graphics/drawable/BitmapDrawable;

    .line 681
    .local v18, "bdYear2":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v39

    .line 682
    .local v39, "bmYear2":Landroid/graphics/Bitmap;
    move-object/from16 v0, v39

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v40

    .line 683
    .local v40, "bmYear22":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f09015a

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v77

    .line 684
    .local v77, "yearTop2":I
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_8

    .line 685
    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v73

    .line 686
    .restart local v73    # "waterW":I
    sub-int v80, v69, v77

    sub-int v77, v80, v73

    .line 688
    .end local v73    # "waterW":I
    :cond_8
    move/from16 v0, v75

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v0, v77

    int-to-float v0, v0

    move/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    move/from16 v2, v80

    move/from16 v3, v81

    move-object/from16 v4, v82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 689
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Bitmap;->recycle()V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView3:Landroid/widget/ImageView;

    move-object/from16 v80, v0

    invoke-virtual/range {v80 .. v80}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    check-cast v19, Landroid/graphics/drawable/BitmapDrawable;

    .line 693
    .local v19, "bdYear3":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v41

    .line 694
    .local v41, "bmYear3":Landroid/graphics/Bitmap;
    move-object/from16 v0, v41

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v42

    .line 695
    .local v42, "bmYear32":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f09015b

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v78

    .line 696
    .local v78, "yearTop3":I
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_9

    .line 697
    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v73

    .line 698
    .restart local v73    # "waterW":I
    sub-int v80, v69, v78

    sub-int v78, v80, v73

    .line 700
    .end local v73    # "waterW":I
    :cond_9
    move/from16 v0, v75

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v0, v78

    int-to-float v0, v0

    move/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move/from16 v2, v80

    move/from16 v3, v81

    move-object/from16 v4, v82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 701
    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Bitmap;->recycle()V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mYearView4:Landroid/widget/ImageView;

    move-object/from16 v80, v0

    invoke-virtual/range {v80 .. v80}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    .line 705
    .local v20, "bdYear4":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v43

    .line 706
    .local v43, "bmYear4":Landroid/graphics/Bitmap;
    move-object/from16 v0, v43

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v44

    .line 707
    .local v44, "bmYear42":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f09015c

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v79

    .line 708
    .local v79, "yearTop4":I
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_a

    .line 709
    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v73

    .line 710
    .restart local v73    # "waterW":I
    sub-int v80, v69, v79

    sub-int v79, v80, v73

    .line 712
    .end local v73    # "waterW":I
    :cond_a
    move/from16 v0, v75

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v0, v79

    int-to-float v0, v0

    move/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    move/from16 v2, v80

    move/from16 v3, v81

    move-object/from16 v4, v82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 713
    invoke-virtual/range {v44 .. v44}, Landroid/graphics/Bitmap;->recycle()V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f020198

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/BitmapDrawable;

    .line 717
    .local v15, "bdHere":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v34

    .line 718
    .local v34, "bmHere":Landroid/graphics/Bitmap;
    move-object/from16 v0, v34

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 719
    .local v33, "bmHera2":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f09015e

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v59

    .line 720
    .local v59, "hereTop":I
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_b

    .line 721
    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v73

    .line 722
    .restart local v73    # "waterW":I
    sub-int v80, v69, v59

    sub-int v59, v80, v73

    .line 724
    .end local v73    # "waterW":I
    :cond_b
    move/from16 v0, v75

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v80

    move/from16 v3, v81

    move-object/from16 v4, v82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 725
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->recycle()V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-static/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraConfig;->isShowWaterLocation()Z

    move-result v80

    if-eqz v80, :cond_10

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f020199

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/BitmapDrawable;

    .line 731
    .local v16, "bdLocationImage":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v35

    .line 732
    .local v35, "bmLocationImage":Landroid/graphics/Bitmap;
    move-object/from16 v0, v35

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 733
    .local v36, "bmLocationImage2":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f09015f

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 735
    .local v8, "LocationImageLeft":I
    const-string v80, "16x9"

    move-object/from16 v0, v71

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v80

    if-eqz v80, :cond_c

    .line 736
    add-int/2addr v8, v6

    .line 738
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090160

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 740
    .local v9, "LocationImageTop":I
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_d

    .line 741
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v72

    .line 742
    .restart local v72    # "waterH":I
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v73

    .line 743
    .restart local v73    # "waterW":I
    sub-int v80, v70, v8

    sub-int v8, v80, v72

    .line 744
    sub-int v80, v69, v9

    sub-int v9, v80, v73

    .line 746
    .end local v72    # "waterH":I
    .end local v73    # "waterW":I
    :cond_d
    int-to-float v0, v8

    move/from16 v80, v0

    int-to-float v0, v9

    move/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move/from16 v2, v80

    move/from16 v3, v81

    move-object/from16 v4, v82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 747
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->recycle()V

    .line 750
    new-instance v66, Landroid/graphics/Paint;

    invoke-direct/range {v66 .. v66}, Landroid/graphics/Paint;-><init>()V

    .line 751
    .local v66, "p":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mUserLocationText:Landroid/widget/TextView;

    move-object/from16 v80, v0

    invoke-virtual/range {v80 .. v80}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v80

    invoke-interface/range {v80 .. v80}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Ljava/lang/String;->length()I

    move-result v63

    .line 752
    .local v63, "length":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f09014b

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v57

    .line 753
    .local v57, "fontSize":I
    mul-int v58, v57, v63

    .line 754
    .local v58, "fontWidth":I
    move/from16 v0, v57

    int-to-float v0, v0

    move/from16 v80, v0

    move-object/from16 v0, v66

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 755
    const/16 v80, -0x1

    move-object/from16 v0, v66

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 756
    const/16 v80, 0x1

    move-object/from16 v0, v66

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 757
    invoke-static/range {v66 .. v66}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 758
    invoke-virtual/range {v66 .. v66}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v55

    .line 759
    .local v55, "fm":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, v55

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v80, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v81, v0

    sub-float v80, v80, v81

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    invoke-static/range {v80 .. v81}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v80

    move-wide/from16 v0, v80

    double-to-int v0, v0

    move/from16 v56, v0

    .line 760
    .local v56, "fontHeight":I
    sget-object v80, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v58

    move/from16 v1, v56

    move-object/from16 v2, v80

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v45

    .line 761
    .local v45, "bmpText":Landroid/graphics/Bitmap;
    new-instance v46, Landroid/graphics/Canvas;

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 763
    .local v46, "canvasText":Landroid/graphics/Canvas;
    invoke-virtual/range {v46 .. v46}, Landroid/graphics/Canvas;->save()I

    .line 764
    const/16 v80, 0x0

    move/from16 v0, v57

    int-to-float v0, v0

    move/from16 v81, v0

    move-object/from16 v0, v46

    move/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mUserLocationText:Landroid/widget/TextView;

    move-object/from16 v80, v0

    invoke-virtual/range {v80 .. v80}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v80

    invoke-interface/range {v80 .. v80}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v80

    const/16 v81, 0x0

    const/16 v82, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v80

    move/from16 v2, v81

    move/from16 v3, v82

    move-object/from16 v4, v66

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 766
    invoke-virtual/range {v46 .. v46}, Landroid/graphics/Canvas;->restore()V

    .line 767
    move-object/from16 v0, v45

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v74

    .line 768
    .local v74, "watermarkRo":Landroid/graphics/Bitmap;
    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Bitmap;->recycle()V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090161

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v64

    .line 771
    .local v64, "locationStrLeft":I
    const-string v80, "16x9"

    move-object/from16 v0, v71

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v80

    if-eqz v80, :cond_e

    .line 772
    add-int v64, v64, v6

    .line 774
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090162

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v65

    .line 775
    .local v65, "locationStrTop":I
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_f

    .line 776
    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v72

    .line 777
    .restart local v72    # "waterH":I
    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v73

    .line 778
    .restart local v73    # "waterW":I
    sub-int v80, v70, v64

    sub-int v64, v80, v72

    .line 779
    sub-int v80, v69, v65

    sub-int v65, v80, v73

    .line 781
    .end local v72    # "waterH":I
    .end local v73    # "waterW":I
    :cond_f
    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v74

    move/from16 v2, v80

    move/from16 v3, v81

    move-object/from16 v4, v82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 782
    invoke-virtual/range {v74 .. v74}, Landroid/graphics/Bitmap;->recycle()V

    .line 786
    .end local v8    # "LocationImageLeft":I
    .end local v9    # "LocationImageTop":I
    .end local v16    # "bdLocationImage":Landroid/graphics/drawable/BitmapDrawable;
    .end local v35    # "bmLocationImage":Landroid/graphics/Bitmap;
    .end local v36    # "bmLocationImage2":Landroid/graphics/Bitmap;
    .end local v45    # "bmpText":Landroid/graphics/Bitmap;
    .end local v46    # "canvasText":Landroid/graphics/Canvas;
    .end local v55    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v56    # "fontHeight":I
    .end local v57    # "fontSize":I
    .end local v58    # "fontWidth":I
    .end local v63    # "length":I
    .end local v64    # "locationStrLeft":I
    .end local v65    # "locationStrTop":I
    .end local v66    # "p":Landroid/graphics/Paint;
    .end local v74    # "watermarkRo":Landroid/graphics/Bitmap;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f02019f

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 787
    .local v11, "bdDateBackground":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v23

    .line 788
    .local v23, "bmDateBackground":Landroid/graphics/Bitmap;
    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 789
    .local v24, "bmDateBackground2":Landroid/graphics/Bitmap;
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    .line 790
    .local v26, "bmDateBackgroundW":I
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    .line 791
    .local v25, "bmDateBackgroundH":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090163

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v47

    .line 792
    .local v47, "dateBackgroundBottom":I
    const/16 v62, 0x0

    .line 793
    .local v62, "leftExtra":I
    const-string v80, "16x9"

    move-object/from16 v0, v71

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v80

    if-eqz v80, :cond_11

    .line 794
    move/from16 v62, v7

    .line 797
    :cond_11
    sub-int v80, v70, v25

    sub-int v60, v80, v62

    .line 798
    .local v60, "leftDateBackgroundLeft":I
    sub-int v80, v69, v26

    sub-int v61, v80, v47

    .line 799
    .local v61, "leftDateBackgroundTop":I
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_12

    .line 800
    sub-int v80, v70, v60

    sub-int v60, v80, v25

    .line 801
    sub-int v80, v69, v61

    sub-int v61, v80, v26

    .line 803
    :cond_12
    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v80

    move/from16 v3, v81

    move-object/from16 v4, v82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 804
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->recycle()V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mDayView1:Landroid/widget/ImageView;

    move-object/from16 v80, v0

    invoke-virtual/range {v80 .. v80}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 808
    .local v12, "bdDateDay1":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v27

    .line 809
    .local v27, "bmDateDay1":Landroid/graphics/Bitmap;
    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 810
    .local v28, "bmDateDay12":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090164

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v54

    .line 811
    .local v54, "distanceLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090167

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v49

    .line 813
    .local v49, "dateDayTop":I
    sub-int v80, v70, v25

    add-int v80, v80, v54

    sub-int v48, v80, v62

    .line 814
    .local v48, "dateDayLeft":I
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_13

    .line 815
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v72

    .line 816
    .restart local v72    # "waterH":I
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v73

    .line 817
    .restart local v73    # "waterW":I
    sub-int v80, v70, v48

    sub-int v48, v80, v72

    .line 818
    sub-int v80, v69, v49

    sub-int v49, v80, v73

    .line 820
    .end local v72    # "waterH":I
    .end local v73    # "waterW":I
    :cond_13
    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v80

    move/from16 v3, v81

    move-object/from16 v4, v82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 821
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->recycle()V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mDayView2:Landroid/widget/ImageView;

    move-object/from16 v80, v0

    invoke-virtual/range {v80 .. v80}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 825
    .local v13, "bdDateDay2":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v29

    .line 826
    .local v29, "bmDateDay2":Landroid/graphics/Bitmap;
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 827
    .local v30, "bmDateDay22":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090168

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v50

    .line 829
    .local v50, "dateDayTop2":I
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_14

    .line 830
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v73

    .line 831
    .restart local v73    # "waterW":I
    sub-int v80, v69, v50

    sub-int v50, v80, v73

    .line 833
    .end local v73    # "waterW":I
    :cond_14
    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v80

    move/from16 v3, v81

    move-object/from16 v4, v82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 834
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->recycle()V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mMonthView:Landroid/widget/ImageView;

    move-object/from16 v80, v0

    invoke-virtual/range {v80 .. v80}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    .line 838
    .local v14, "bdDateMonth":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v31

    .line 839
    .local v31, "bmDateMonth":Landroid/graphics/Bitmap;
    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 840
    .local v32, "bmDateMonth2":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090165

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v53

    .line 841
    .local v53, "dateMonthTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v80, v0

    invoke-interface/range {v80 .. v80}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v80

    invoke-virtual/range {v80 .. v80}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v80

    const v81, 0x7f090166

    invoke-virtual/range {v80 .. v81}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v52

    .line 843
    .local v52, "dateMonthRight":I
    sub-int v80, v70, v52

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v81

    sub-int v80, v80, v81

    sub-int v51, v80, v62

    .line 844
    .local v51, "dateMonthLeft":I
    const/16 v80, 0x10e

    move/from16 v0, p2

    move/from16 v1, v80

    if-ne v0, v1, :cond_15

    .line 845
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v72

    .line 846
    .restart local v72    # "waterH":I
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v73

    .line 847
    .restart local v73    # "waterW":I
    sub-int v80, v70, v51

    sub-int v51, v80, v72

    .line 848
    sub-int v80, v69, v53

    sub-int v53, v80, v73

    .line 850
    .end local v72    # "waterH":I
    .end local v73    # "waterW":I
    :cond_15
    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v80, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v81, v0

    const/16 v82, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move/from16 v2, v80

    move/from16 v3, v81

    move-object/from16 v4, v82

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 851
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1
.end method

.method public enterWaterPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v1, v1}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->loadImage(II)I

    move-result v0

    .line 69
    .local v0, "resId":I
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->addViewToParent(I)V

    .line 71
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->initViews()V

    .line 73
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->setTimeData()V

    .line 75
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraConfig;->isShowWaterLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->setLocationData()V

    .line 78
    :cond_0
    return-void
.end method

.method public exitWaterPanel()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraConfig;->isShowWaterLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->releaseLocation()V

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation2;->removeViewToParent()V

    .line 87
    return-void
.end method

.method public getDataType()Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;->TIME_LOCATION:Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;

    return-object v0
.end method

.method public loadImage(II)I
    .locals 1
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 93
    const v0, 0x7f040040

    return v0
.end method
