.class public Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;
.super Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;
.source "VideoTypeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$1;,
        Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;
    }
.end annotation


# static fields
.field public static final VIDEO_LIVE:Ljava/lang/String; = "live"

.field public static final VIDEO_NIGHT:Ljava/lang/String; = "night"

.field public static final VIDEO_NORMAL:Ljava/lang/String; = "normal"

.field public static final VIDEO_RAPID:Ljava/lang/String; = "rapid"

.field public static final VIDEO_SLOW:Ljava/lang/String; = "slow"


# instance fields
.field private mHDRTv:Landroid/widget/TextView;

.field private mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

.field private mLived:Landroid/widget/RadioButton;

.field private mNormal:Landroid/widget/RadioButton;

.field private mNormalTv:Landroid/widget/TextView;

.field private mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

.field private mRadioButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mSlow:Landroid/widget/RadioButton;

.field private mSlowTv:Landroid/widget/TextView;

.field private mSpeed:Landroid/widget/RadioButton;

.field private mSpeedTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V
    .locals 3
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .param p2, "mOnPopViewCheckChanged"    # Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;-><init>()V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mRadioButtons:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 54
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .line 56
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    .line 58
    .local v0, "mCameraActivity":Lcom/lenovo/scg/camera/CameraActivity;
    if-eqz v0, :cond_0

    .line 60
    const v1, 0x7f100265

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

    .line 62
    const v1, 0x7f100286

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mNormal:Landroid/widget/RadioButton;

    .line 63
    const v1, 0x7f100287

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mLived:Landroid/widget/RadioButton;

    .line 66
    const v1, 0x7f100288

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSpeed:Landroid/widget/RadioButton;

    .line 67
    const v1, 0x7f100289

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSlow:Landroid/widget/RadioButton;

    .line 69
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mLived:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSpeed:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSlow:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mLived:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSpeed:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSlow:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    const v1, 0x7f100266

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mNormalTv:Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mNormalTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->rotateView(Landroid/view/View;)V

    .line 88
    const v1, 0x7f100267

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mHDRTv:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mHDRTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->rotateView(Landroid/view/View;)V

    .line 98
    const v1, 0x7f100268

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSpeedTv:Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSpeedTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->rotateView(Landroid/view/View;)V

    .line 101
    const v1, 0x7f100269

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSlowTv:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSlowTv:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->rotateView(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method private rotateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 108
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 109
    return-void
.end method


# virtual methods
.method public getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .locals 2
    .param p1, "radioButtonID"    # I

    .prologue
    .line 201
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;)V

    .line 202
    .local v0, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    packed-switch p1, :pswitch_data_0

    .line 225
    :goto_0
    return-object v0

    .line 204
    :pswitch_0
    const v1, 0x7f020043

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 205
    const v1, 0x7f0f00cb

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 209
    :pswitch_1
    const v1, 0x7f02004c

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 210
    const v1, 0x7f0f00ca

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 214
    :pswitch_2
    const v1, 0x7f020049

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 215
    const v1, 0x7f0f00c9

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 219
    :pswitch_3
    const v1, 0x7f020041

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 220
    const v1, 0x7f0f01fe

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x7f100286
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSettingTypeByRadioButton(I)V
    .locals 0
    .param p1, "radioButtonID"    # I

    .prologue
    .line 260
    return-void
.end method

.method public getSettingValueByRadioButton(I)Ljava/lang/String;
    .locals 2
    .param p1, "radioButtonID"    # I

    .prologue
    .line 232
    sparse-switch p1, :sswitch_data_0

    .line 249
    const-string v0, "getFlashValue"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string/jumbo v0, "normal"

    :goto_0
    return-object v0

    .line 234
    :sswitch_0
    const-string/jumbo v0, "normal"

    goto :goto_0

    .line 238
    :sswitch_1
    const-string/jumbo v0, "rapid"

    goto :goto_0

    .line 242
    :sswitch_2
    const-string/jumbo v0, "slow"

    goto :goto_0

    .line 245
    :sswitch_3
    const-string v0, "live"

    goto :goto_0

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100266 -> :sswitch_0
        0x7f100287 -> :sswitch_3
        0x7f100288 -> :sswitch_1
        0x7f100289 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 136
    if-eqz p2, :cond_2

    .line 137
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 139
    .local v0, "checkedid":I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->getSettingValueByRadioButton(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "mSettingValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v6, "camera_setting_video_type_key"

    invoke-interface {v5, v6, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 144
    .local v2, "mButton":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 145
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 147
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "mButton":Landroid/widget/RadioButton;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    move-result-object v3

    .line 151
    .local v3, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    iget v6, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    iget v7, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    invoke-interface {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;->onPopViewCheckedChanged(II)V

    .line 153
    .end local v0    # "checkedid":I
    .end local v1    # "i":I
    .end local v3    # "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .end local v4    # "mSettingValue":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public selectRadioButton(Ljava/lang/String;)V
    .locals 4
    .param p1, "videoType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mLived:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSpeed:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSlow:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 163
    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mLived:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSpeed:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSlow:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 189
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mLived:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSpeed:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSlow:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    return-void

    .line 170
    :cond_1
    const-string v0, "live"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mLived:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSpeed:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSlow:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto :goto_0

    .line 176
    :cond_2
    const-string/jumbo v0, "rapid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mLived:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSpeed:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSlow:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto :goto_0

    .line 182
    :cond_3
    const-string/jumbo v0, "slow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mLived:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSpeed:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSlow:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto :goto_0
.end method

.method public setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V
    .locals 2
    .param p1, "mSettingItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .param p2, "mSettingValue"    # Ljava/lang/String;

    .prologue
    .line 265
    sget-object v1, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$1;->$SwitchMap$com$lenovo$scg$camera$setting$uicontroll$VideoTypeUI$VIDEO_TYPE:[I

    const-class v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    invoke-static {v0, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI$VIDEO_TYPE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 297
    :goto_0
    return-void

    .line 268
    :pswitch_0
    const v0, 0x7f0204fc

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 273
    :pswitch_1
    const v0, 0x7f0204f3

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 278
    :pswitch_2
    const v0, 0x7f0204f9

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 283
    :pswitch_3
    const v0, 0x7f020508

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 288
    :pswitch_4
    const v0, 0x7f020505

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 293
    :pswitch_5
    const v0, 0x7f0204f6

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V
    .locals 5
    .param p1, "mItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v1, v2, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_video_type_key"

    const-string/jumbo v3, "normal"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "type":Ljava/lang/String;
    const-string v1, "mPicTypePopView.selectRadioButton(type)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pictype :        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->updatePopViewNameVisibility(I)V

    .line 119
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updatePopViewNameVisibility(I)V
    .locals 1
    .param p1, "mVisibility"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    return-void
.end method
