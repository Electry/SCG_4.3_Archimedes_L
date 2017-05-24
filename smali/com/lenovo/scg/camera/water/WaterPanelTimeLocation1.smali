.class public Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;
.super Lcom/lenovo/scg/camera/water/WaterPanel;
.source "WaterPanelTimeLocation1.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WaterPanelTimeLocation1"


# instance fields
.field private bdLocationListener:Lcom/baidu/location/BDLocationListener;

.field private mChildView:Landroid/widget/RelativeLayout;

.field private mLocationClient:Lcom/baidu/location/LocationClient;

.field private mRealParentView:Landroid/widget/LinearLayout;

.field private mUserLocationText:Landroid/widget/TextView;

.field private mUserWeatherText:Landroid/widget/TextView;

.field private mWeatherListener:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanel;-><init>()V

    .line 232
    new-instance v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$1;-><init>(Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->bdLocationListener:Lcom/baidu/location/BDLocationListener;

    .line 261
    new-instance v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$2;-><init>(Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mWeatherListener:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mUserLocationText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mUserWeatherText:Landroid/widget/TextView;

    return-object v0
.end method

.method private addViewToParent(I)V
    .locals 4
    .param p1, "childResId"    # I

    .prologue
    .line 90
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mChildView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mChildView:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mChildView:Landroid/widget/RelativeLayout;

    const v3, 0x7f100199

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 95
    .local v1, "locationll":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraConfig;->isShowWaterLocation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mChildView:Landroid/widget/RelativeLayout;

    const v3, 0x7f10019a

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mUserLocationText:Landroid/widget/TextView;

    .line 101
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mChildView:Landroid/widget/RelativeLayout;

    const v3, 0x7f100196

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mUserWeatherText:Landroid/widget/TextView;

    .line 104
    .end local v1    # "locationll":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mRealParentView:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mParentView:Landroid/view/ViewGroup;

    const v3, 0x7f100183

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mRealParentView:Landroid/widget/LinearLayout;

    .line 106
    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mRealParentView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mChildView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    :cond_1
    return-void

    .line 98
    .restart local v1    # "locationll":Landroid/widget/LinearLayout;
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initLocation()V
    .locals 3

    .prologue
    .line 203
    new-instance v1, Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 204
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->bdLocationListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 205
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 213
    .local v0, "option":Lcom/baidu/location/LocationClientOption;
    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 214
    const-string v1, "all"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setAddrType(Ljava/lang/String;)V

    .line 215
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 216
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 218
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClient;->start()V

    .line 219
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClient;->requestLocation()I

    .line 220
    return-void
.end method

.method private releaseLocation()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->bdLocationListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 230
    :cond_1
    return-void
.end method

.method private releaseWeatherData()V
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->getInstance()Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mWeatherListener:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->removeListener(Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;)V

    .line 195
    invoke-static {}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->getInstance()Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->unRegisterWeatherReceiver()V

    .line 196
    return-void
.end method

.method private removeViewToParent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mRealParentView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mRealParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 114
    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mRealParentView:Landroid/widget/LinearLayout;

    .line 115
    iput-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mChildView:Landroid/widget/RelativeLayout;

    .line 117
    :cond_0
    return-void
.end method

.method private setLocationData()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->initLocation()V

    .line 200
    return-void
.end method

.method private setTimeData()V
    .locals 21

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mChildView:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 177
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 125
    .local v14, "t":Landroid/text/format/Time;
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    .line 126
    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v16, v0

    .line 127
    .local v16, "year":I
    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, 0x1

    .line 128
    .local v6, "month":I
    iget v3, v14, Landroid/text/format/Time;->monthDay:I

    .line 130
    .local v3, "day":I
    iget v4, v14, Landroid/text/format/Time;->hour:I

    .line 131
    .local v4, "hour":I
    iget v5, v14, Landroid/text/format/Time;->minute:I

    .line 133
    .local v5, "minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 135
    .local v7, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mChildView:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100194

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 136
    .local v2, "dataTv":Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v8, "sb":Ljava/lang/StringBuilder;
    const v17, 0x7f0f01d7

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    rem-int/lit8 v17, v6, 0xa

    sub-int v17, v6, v17

    div-int/lit8 v13, v17, 0xa

    .line 140
    .local v13, "shiweiMO":I
    if-gtz v13, :cond_1

    .line 141
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    const v17, 0x7f0f01c5

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    rem-int/lit8 v17, v3, 0xa

    sub-int v17, v3, v17

    div-int/lit8 v10, v17, 0xa

    .line 147
    .local v10, "shiweiD":I
    if-gtz v10, :cond_2

    .line 148
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_2
    const v17, 0x7f0f01bc

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mChildView:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100195

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 155
    .local v15, "timeTv":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v9, "sb2":Ljava/lang/StringBuilder;
    if-ltz v4, :cond_6

    const/16 v17, 0xc

    move/from16 v0, v17

    if-gt v4, v0, :cond_6

    .line 157
    const v17, 0x7f0f01bb

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_3
    :goto_1
    rem-int/lit8 v17, v4, 0xa

    sub-int v17, v4, v17

    div-int/lit8 v11, v17, 0xa

    .line 163
    .local v11, "shiweiH":I
    if-gtz v11, :cond_4

    .line 164
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_4
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    rem-int/lit8 v17, v5, 0xa

    sub-int v17, v5, v17

    div-int/lit8 v12, v17, 0xa

    .line 171
    .local v12, "shiweiM":I
    if-gtz v12, :cond_5

    .line 172
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_5
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 158
    .end local v11    # "shiweiH":I
    .end local v12    # "shiweiM":I
    :cond_6
    const/16 v17, 0xc

    move/from16 v0, v17

    if-le v4, v0, :cond_3

    const/16 v17, 0x18

    move/from16 v0, v17

    if-gt v4, v0, :cond_3

    .line 159
    const v17, 0x7f0f01cb

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private setWeatherData()V
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->getInstance()Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->setContext(Landroid/content/Context;)V

    .line 181
    invoke-static {}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->getInstance()Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mWeatherListener:Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->addListeners(Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;)V

    .line 182
    invoke-static {}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->getInstance()Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->registerWeatherReceiver()V

    .line 183
    invoke-static {}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->getInstance()Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/water/LenovoWeatherAssist;->getLocalTodayDataFormDB()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "weather":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "WaterPanelTimeLocation1"

    const-string/jumbo v2, "setWeatherData, weather is empty!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mUserWeatherText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public drawWater(Landroid/graphics/Canvas;I)V
    .locals 78
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "orientation"    # I

    .prologue
    .line 282
    const-string v2, "WaterPanelTimeLocation1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/16 v2, 0x10e

    move/from16 v0, p2

    if-eq v0, v2, :cond_0

    const/16 v2, 0xb4

    move/from16 v0, p2

    if-ne v0, v2, :cond_16

    .line 285
    :cond_0
    const/16 p2, 0x5a

    .line 290
    :cond_1
    :goto_0
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 291
    .local v7, "p":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v37

    .line 293
    .local v37, "fontSize1":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v38

    .line 295
    .local v38, "fontSize1en":I
    move/from16 v0, v37

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v61

    .line 298
    .local v61, "srcH":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v62

    .line 300
    .local v62, "srcW":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09013f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v56

    .line 301
    .local v56, "locationStringBottom":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 302
    .local v24, "dateLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090150

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v59

    .line 303
    .local v59, "paddingbottom":I
    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v32

    .line 304
    .local v32, "fm1":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, v32

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move-object/from16 v0, v32

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v35, v0

    .line 306
    .local v35, "fontHeight1":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mUserWeatherText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v76

    .line 307
    .local v76, "weatherTvStr":Ljava/lang/String;
    invoke-virtual/range {v76 .. v76}, Ljava/lang/String;->length()I

    move-result v75

    .line 308
    .local v75, "weatherLength":I
    mul-int v42, v37, v75

    .line 310
    .local v42, "fontWeatherWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 311
    mul-int v42, v38, v75

    .line 314
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mChildView:Landroid/widget/RelativeLayout;

    const v3, 0x7f100195

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v64

    check-cast v64, Landroid/widget/TextView;

    .line 315
    .local v64, "timeTv":Landroid/widget/TextView;
    invoke-virtual/range {v64 .. v64}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v65

    .line 316
    .local v65, "timeTvStr":Ljava/lang/String;
    invoke-virtual/range {v65 .. v65}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v63, v2, -0x2

    .line 317
    .local v63, "timeLength":I
    const-string v2, "WaterPanelTimeLocation1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v63

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    mul-int v41, v37, v63

    .line 320
    .local v41, "fontTimeWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 321
    mul-int v41, v38, v63

    .line 324
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090151

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    .line 326
    .local v31, "distance":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mChildView:Landroid/widget/RelativeLayout;

    const v3, 0x7f100194

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 327
    .local v29, "dateTv":Landroid/widget/TextView;
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    .line 328
    .local v30, "dateTvStr":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v25, v2, -0x3

    .line 329
    .local v25, "dateLength":I
    const-string v2, "WaterPanelTimeLocation1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dateLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    mul-int v34, v37, v25

    .line 332
    .local v34, "fontDateWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 333
    mul-int v34, v38, v25

    .line 336
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_front_setting_picture_size_key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0f002d

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 338
    .local v66, "valuePictureSize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090139

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 339
    .local v8, "Left169":I
    const-string v2, "WaterPanelTimeLocation1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawWater, valuePictureSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v2, "16x9"

    move-object/from16 v0, v66

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 341
    add-int v24, v24, v8

    .line 345
    :cond_5
    const-string v2, "#6625c6ff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 347
    .local v10, "backgroundLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090153

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 351
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090154

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 352
    .local v11, "backgroundTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090155

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 353
    .local v9, "backgroundH":I
    new-instance v60, Landroid/graphics/Rect;

    invoke-direct/range {v60 .. v60}, Landroid/graphics/Rect;-><init>()V

    .line 354
    .local v60, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v60

    iput v11, v0, Landroid/graphics/Rect;->left:I

    .line 355
    const-string v2, "16x9"

    move-object/from16 v0, v66

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 356
    move-object/from16 v0, v60

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    move-object/from16 v0, v60

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 358
    :cond_7
    move-object/from16 v0, v60

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 359
    move-object/from16 v0, v60

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v9

    move-object/from16 v0, v60

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 360
    move-object/from16 v0, v60

    iget v2, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v3, v59, 0x2

    add-int v3, v3, v34

    add-int v3, v3, v41

    add-int v3, v3, v42

    mul-int/lit8 v4, v31, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, v60

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 362
    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    .line 363
    move-object/from16 v0, v60

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v60

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v77, v2, v3

    .line 364
    .local v77, "width":I
    move-object/from16 v0, v60

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v2, v62, v2

    sub-int/2addr v2, v9

    move-object/from16 v0, v60

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 365
    move-object/from16 v0, v60

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v61, v2

    sub-int v2, v2, v77

    move-object/from16 v0, v60

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 366
    move-object/from16 v0, v60

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v9

    move-object/from16 v0, v60

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 367
    move-object/from16 v0, v60

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int v2, v2, v77

    move-object/from16 v0, v60

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 369
    .end local v77    # "width":I
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 372
    const/high16 v2, -0x1000000

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    const-string v2, "WaterPanelTimeLocation1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "weatherLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v75

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v42

    move/from16 v1, v35

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 375
    .local v19, "bmpTextW":Landroid/graphics/Bitmap;
    new-instance v23, Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 376
    .local v23, "canvasTextW":Landroid/graphics/Canvas;
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Canvas;->save()I

    .line 377
    const/4 v2, 0x0

    move/from16 v0, v37

    int-to-float v3, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 378
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v76

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 379
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Canvas;->restore()V

    .line 380
    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v74

    .line 381
    .local v74, "watermarkRoW":Landroid/graphics/Bitmap;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 383
    add-int v2, v42, v59

    add-int v2, v2, v56

    sub-int v26, v61, v2

    .line 385
    .local v26, "dateTop1":I
    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_9

    .line 386
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v67

    .line 387
    .local v67, "waterH":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v68

    .line 388
    .local v68, "waterW":I
    sub-int v2, v62, v24

    sub-int v24, v2, v67

    .line 389
    sub-int v2, v61, v26

    sub-int v26, v2, v68

    .line 392
    .end local v67    # "waterH":I
    .end local v68    # "waterW":I
    :cond_9
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v3, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v74

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 393
    invoke-virtual/range {v74 .. v74}, Landroid/graphics/Bitmap;->recycle()V

    .line 396
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v41

    move/from16 v1, v35

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 397
    .local v18, "bmpTextT":Landroid/graphics/Bitmap;
    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 398
    .local v22, "canvasTextT":Landroid/graphics/Canvas;
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Canvas;->save()I

    .line 399
    const/4 v2, 0x0

    move/from16 v0, v37

    int-to-float v3, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 400
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v65

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 401
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Canvas;->restore()V

    .line 402
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v73

    .line 403
    .local v73, "watermarkRoT":Landroid/graphics/Bitmap;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 405
    add-int v2, v42, v59

    add-int v2, v2, v56

    add-int v2, v2, v41

    add-int v2, v2, v31

    sub-int v27, v61, v2

    .line 407
    .local v27, "dateTop2":I
    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    .line 408
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v68

    .line 409
    .restart local v68    # "waterW":I
    sub-int v2, v61, v27

    sub-int v27, v2, v68

    .line 412
    .end local v68    # "waterW":I
    :cond_a
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v27

    int-to-float v3, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v73

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 413
    invoke-virtual/range {v73 .. v73}, Landroid/graphics/Bitmap;->recycle()V

    .line 416
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 417
    .local v16, "bmpTextD":Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 418
    .local v20, "canvasTextD":Landroid/graphics/Canvas;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Canvas;->save()I

    .line 419
    const/4 v2, 0x0

    move/from16 v0, v37

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 420
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 421
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Canvas;->restore()V

    .line 422
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v71

    .line 423
    .local v71, "watermarkRoD":Landroid/graphics/Bitmap;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 425
    add-int v2, v42, v59

    add-int v2, v2, v56

    mul-int/lit8 v3, v31, 0x2

    add-int/2addr v2, v3

    add-int v2, v2, v41

    add-int v2, v2, v34

    sub-int v28, v61, v2

    .line 427
    .local v28, "dateTop3":I
    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_b

    .line 428
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v68

    .line 429
    .restart local v68    # "waterW":I
    sub-int v2, v61, v28

    sub-int v28, v2, v68

    .line 432
    .end local v68    # "waterW":I
    :cond_b
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v28

    int-to-float v3, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v71

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 433
    invoke-virtual/range {v71 .. v71}, Landroid/graphics/Bitmap;->recycle()V

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    .line 437
    .local v44, "hereLeft":I
    const-string v2, "16x9"

    move-object/from16 v0, v66

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 438
    add-int v44, v44, v8

    .line 440
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090147

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v45

    .line 441
    .local v45, "hereTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020197

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 442
    .local v12, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 443
    .local v14, "bm":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v69

    .line 445
    .local v69, "watermarkRo":Landroid/graphics/Bitmap;
    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_d

    .line 446
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v67

    .line 447
    .restart local v67    # "waterH":I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v68

    .line 448
    .restart local v68    # "waterW":I
    sub-int v2, v62, v44

    sub-int v44, v2, v67

    .line 449
    sub-int v2, v61, v45

    sub-int v45, v2, v68

    .line 452
    .end local v67    # "waterH":I
    .end local v68    # "waterW":I
    :cond_d
    move/from16 v0, v44

    int-to-float v2, v0

    move/from16 v0, v45

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v69

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 453
    invoke-virtual/range {v69 .. v69}, Landroid/graphics/Bitmap;->recycle()V

    .line 456
    const/4 v2, -0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 457
    const v2, 0x4019999a    # 2.4f

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v50

    .line 459
    .local v50, "lineWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v47

    .line 460
    .local v47, "lineHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090144

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v48

    .line 461
    .local v48, "lineLeft":I
    const-string v2, "16x9"

    move-object/from16 v0, v66

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 462
    add-int v48, v48, v8

    .line 464
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v49

    .line 466
    .local v49, "lineTop":I
    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_f

    .line 467
    sub-int v2, v62, v48

    sub-int v48, v2, v47

    .line 468
    sub-int v2, v61, v49

    sub-int v49, v2, v50

    .line 471
    :cond_f
    move/from16 v0, v48

    int-to-float v3, v0

    move/from16 v0, v49

    int-to-float v4, v0

    add-int v2, v48, v47

    int-to-float v5, v2

    add-int v2, v49, v50

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraConfig;->isShowWaterLocation()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09013e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v57

    .line 477
    .local v57, "locationStringLeft":I
    const-string v2, "16x9"

    move-object/from16 v0, v66

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 478
    add-int v57, v57, v8

    .line 480
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mUserLocationText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v55

    .line 481
    .local v55, "locationStr":Ljava/lang/String;
    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v46

    .line 482
    .local v46, "length":I
    const-string v2, "WaterPanelTimeLocation1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location string length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v39

    .line 484
    .local v39, "fontSizeL":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v40

    .line 486
    .local v40, "fontSizeLen":I
    mul-int v43, v39, v46

    .line 488
    .local v43, "fontWidthL":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 489
    mul-int v43, v40, v46

    .line 492
    :cond_11
    move/from16 v0, v39

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 493
    invoke-static {v7}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 494
    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v33

    .line 495
    .local v33, "fmL":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, v33

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move-object/from16 v0, v33

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v36, v0

    .line 496
    .local v36, "fontHeightL":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v43

    move/from16 v1, v36

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 497
    .local v17, "bmpTextL":Landroid/graphics/Bitmap;
    new-instance v21, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 498
    .local v21, "canvasTextL":Landroid/graphics/Canvas;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Canvas;->save()I

    .line 499
    const/4 v2, 0x0

    move/from16 v0, v39

    int-to-float v3, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 500
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 501
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Canvas;->restore()V

    .line 502
    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v72

    .line 503
    .local v72, "watermarkRoL":Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 505
    add-int v2, v43, v56

    sub-int v58, v61, v2

    .line 507
    .local v58, "locationStringTop":I
    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_12

    .line 508
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v67

    .line 509
    .restart local v67    # "waterH":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v68

    .line 510
    .restart local v68    # "waterW":I
    sub-int v2, v62, v57

    sub-int v57, v2, v67

    .line 511
    sub-int v2, v61, v58

    sub-int v58, v2, v68

    .line 514
    .end local v67    # "waterH":I
    .end local v68    # "waterW":I
    :cond_12
    move/from16 v0, v57

    int-to-float v2, v0

    move/from16 v0, v58

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v72

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 515
    invoke-virtual/range {v72 .. v72}, Landroid/graphics/Bitmap;->recycle()V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v51

    .line 520
    .local v51, "locationImageLeft":I
    const-string v2, "16x9"

    move-object/from16 v0, v66

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 521
    add-int v51, v51, v8

    .line 523
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090140

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v54

    .line 525
    .local v54, "locationImageWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090141

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v52

    .line 527
    .local v52, "locationImageStringDis":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02019a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 528
    .local v13, "bd2":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 529
    .local v15, "bm2":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v70

    .line 531
    .local v70, "watermarkRo2":Landroid/graphics/Bitmap;
    add-int v2, v54, v52

    add-int v2, v2, v43

    add-int v2, v2, v56

    sub-int v53, v61, v2

    .line 533
    .local v53, "locationImageTop":I
    const/16 v2, 0x10e

    move/from16 v0, p2

    if-ne v0, v2, :cond_14

    .line 534
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v67

    .line 535
    .restart local v67    # "waterH":I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v68

    .line 536
    .restart local v68    # "waterW":I
    sub-int v2, v62, v51

    sub-int v51, v2, v67

    .line 537
    sub-int v2, v61, v53

    sub-int v53, v2, v68

    .line 540
    .end local v67    # "waterH":I
    .end local v68    # "waterW":I
    :cond_14
    move/from16 v0, v51

    int-to-float v2, v0

    move/from16 v0, v53

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 541
    invoke-virtual/range {v70 .. v70}, Landroid/graphics/Bitmap;->recycle()V

    .line 543
    .end local v13    # "bd2":Landroid/graphics/drawable/BitmapDrawable;
    .end local v15    # "bm2":Landroid/graphics/Bitmap;
    .end local v17    # "bmpTextL":Landroid/graphics/Bitmap;
    .end local v21    # "canvasTextL":Landroid/graphics/Canvas;
    .end local v33    # "fmL":Landroid/graphics/Paint$FontMetrics;
    .end local v36    # "fontHeightL":I
    .end local v39    # "fontSizeL":I
    .end local v40    # "fontSizeLen":I
    .end local v43    # "fontWidthL":I
    .end local v46    # "length":I
    .end local v51    # "locationImageLeft":I
    .end local v52    # "locationImageStringDis":I
    .end local v53    # "locationImageTop":I
    .end local v54    # "locationImageWidth":I
    .end local v55    # "locationStr":Ljava/lang/String;
    .end local v57    # "locationStringLeft":I
    .end local v58    # "locationStringTop":I
    .end local v70    # "watermarkRo2":Landroid/graphics/Bitmap;
    .end local v72    # "watermarkRoL":Landroid/graphics/Bitmap;
    :cond_15
    return-void

    .line 286
    .end local v7    # "p":Landroid/graphics/Paint;
    .end local v8    # "Left169":I
    .end local v9    # "backgroundH":I
    .end local v10    # "backgroundLeft":I
    .end local v11    # "backgroundTop":I
    .end local v12    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v14    # "bm":Landroid/graphics/Bitmap;
    .end local v16    # "bmpTextD":Landroid/graphics/Bitmap;
    .end local v18    # "bmpTextT":Landroid/graphics/Bitmap;
    .end local v19    # "bmpTextW":Landroid/graphics/Bitmap;
    .end local v20    # "canvasTextD":Landroid/graphics/Canvas;
    .end local v22    # "canvasTextT":Landroid/graphics/Canvas;
    .end local v23    # "canvasTextW":Landroid/graphics/Canvas;
    .end local v24    # "dateLeft":I
    .end local v25    # "dateLength":I
    .end local v26    # "dateTop1":I
    .end local v27    # "dateTop2":I
    .end local v28    # "dateTop3":I
    .end local v29    # "dateTv":Landroid/widget/TextView;
    .end local v30    # "dateTvStr":Ljava/lang/String;
    .end local v31    # "distance":I
    .end local v32    # "fm1":Landroid/graphics/Paint$FontMetrics;
    .end local v34    # "fontDateWidth":I
    .end local v35    # "fontHeight1":I
    .end local v37    # "fontSize1":I
    .end local v38    # "fontSize1en":I
    .end local v41    # "fontTimeWidth":I
    .end local v42    # "fontWeatherWidth":I
    .end local v44    # "hereLeft":I
    .end local v45    # "hereTop":I
    .end local v47    # "lineHeight":I
    .end local v48    # "lineLeft":I
    .end local v49    # "lineTop":I
    .end local v50    # "lineWidth":I
    .end local v56    # "locationStringBottom":I
    .end local v59    # "paddingbottom":I
    .end local v60    # "r":Landroid/graphics/Rect;
    .end local v61    # "srcH":I
    .end local v62    # "srcW":I
    .end local v63    # "timeLength":I
    .end local v64    # "timeTv":Landroid/widget/TextView;
    .end local v65    # "timeTvStr":Ljava/lang/String;
    .end local v66    # "valuePictureSize":Ljava/lang/String;
    .end local v69    # "watermarkRo":Landroid/graphics/Bitmap;
    .end local v71    # "watermarkRoD":Landroid/graphics/Bitmap;
    .end local v73    # "watermarkRoT":Landroid/graphics/Bitmap;
    .end local v74    # "watermarkRoW":Landroid/graphics/Bitmap;
    .end local v75    # "weatherLength":I
    .end local v76    # "weatherTvStr":Ljava/lang/String;
    :cond_16
    if-nez p2, :cond_1

    .line 287
    const/16 p2, 0x10e

    goto/16 :goto_0
.end method

.method public enterWaterPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v1, v1}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->loadImage(II)I

    move-result v0

    .line 59
    .local v0, "resId":I
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->addViewToParent(I)V

    .line 61
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->setTimeData()V

    .line 62
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->setWeatherData()V

    .line 63
    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraConfig;->isShowWaterLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->setLocationData()V

    .line 66
    :cond_0
    return-void
.end method

.method public exitWaterPanel()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraConfig;->isShowWaterLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->releaseLocation()V

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->releaseWeatherData()V

    .line 74
    invoke-direct {p0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->removeViewToParent()V

    .line 75
    return-void
.end method

.method public getDataType()Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;->TIME_LOCATION:Lcom/lenovo/scg/camera/water/WaterPanel$DATA_TYPE;

    return-object v0
.end method

.method public loadImage(II)I
    .locals 1
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    .line 80
    const v0, 0x7f04003f

    return v0
.end method
