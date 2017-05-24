.class public Lcom/lenovo/scg/camera/OnScreenIndicators;
.super Ljava/lang/Object;
.source "OnScreenIndicators.java"


# instance fields
.field private final mExposureIndicator:Landroid/widget/ImageView;

.field private final mFlashIndicator:Landroid/widget/ImageView;

.field private final mLocationIndicator:Landroid/widget/ImageView;

.field private final mOnScreenIndicators:Landroid/view/View;

.field private final mSceneIndicator:Landroid/widget/ImageView;

.field private final mTimerIndicator:Landroid/widget/ImageView;

.field private final mWBArray:[I

.field private final mWBIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "onScreenIndicatorsView"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 53
    .local v1, "iconIds":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 54
    .local v2, "n":I
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mWBArray:[I

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 56
    iget-object v3, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mWBArray:[I

    const v4, 0x7f02066a

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iput-object p2, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mOnScreenIndicators:Landroid/view/View;

    .line 59
    const v3, 0x7f100676

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mExposureIndicator:Landroid/widget/ImageView;

    .line 60
    const v3, 0x7f100675

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    .line 61
    const v3, 0x7f100673

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    .line 62
    const v3, 0x7f100677

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mLocationIndicator:Landroid/widget/ImageView;

    .line 63
    const v3, 0x7f100674

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    .line 64
    const v3, 0x7f100678

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mWBIndicator:Landroid/widget/ImageView;

    .line 65
    return-void
.end method


# virtual methods
.method public resetToDefault()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/OnScreenIndicators;->updateExposureOnScreenIndicator(I)V

    .line 72
    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/OnScreenIndicators;->updateFlashOnScreenIndicator(Ljava/lang/String;)V

    .line 73
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/OnScreenIndicators;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/OnScreenIndicators;->updateWBIndicator(I)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/OnScreenIndicators;->updateTimerIndicator(Z)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/OnScreenIndicators;->updateLocationIndicator(Z)V

    .line 77
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mOnScreenIndicators:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    return-void
.end method

.method public updateExposureOnScreenIndicator(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "id":I
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mExposureIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    return-void

    .line 102
    :pswitch_0
    const v0, 0x7f020659

    .line 103
    goto :goto_0

    .line 105
    :pswitch_1
    const v0, 0x7f020658

    .line 106
    goto :goto_0

    .line 108
    :pswitch_2
    const v0, 0x7f020657

    .line 109
    goto :goto_0

    .line 111
    :pswitch_3
    const v0, 0x7f020656

    .line 112
    goto :goto_0

    .line 114
    :pswitch_4
    const v0, 0x7f02065a

    .line 115
    goto :goto_0

    .line 117
    :pswitch_5
    const v0, 0x7f02065b

    .line 118
    goto :goto_0

    .line 120
    :pswitch_6
    const v0, 0x7f02065c

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public updateExposureOnScreenIndicator(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # I

    .prologue
    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mExposureIndicator:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    .line 88
    .local v0, "step":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 89
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/camera/OnScreenIndicators;->updateExposureOnScreenIndicator(I)V

    goto :goto_0
.end method

.method public updateFlashOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f02065e

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 151
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 154
    :cond_2
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02065d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 156
    :cond_3
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02065f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateLocationIndicator(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mLocationIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mLocationIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f020661

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f020660

    goto :goto_1
.end method

.method public updateSceneOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 173
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020663

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 175
    :cond_2
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_CAMERA_HDR:Z

    if-eqz v0, :cond_3

    const-string v0, "hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020662

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020664

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateTimerIndicator(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f020666

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f020665

    goto :goto_1
.end method

.method public updateWBIndicator(I)V
    .locals 2
    .param p1, "wbIndex"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mWBIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mWBIndicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/OnScreenIndicators;->mWBArray:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
