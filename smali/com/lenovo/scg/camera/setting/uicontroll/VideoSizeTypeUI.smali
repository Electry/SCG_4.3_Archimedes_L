.class public Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;
.super Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;
.source "VideoSizeTypeUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TakePicTypePopViewUI"


# instance fields
.field private fullHighDefinitionTV:Landroid/widget/TextView;

.field private fullHightDefinition:Landroid/widget/RadioButton;

.field private highDefinition:Landroid/widget/RadioButton;

.field private highDefinitionTV:Landroid/widget/TextView;

.field private mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

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

.field private mVideoSupportLayout01:Landroid/widget/RelativeLayout;

.field private mVideoSupportLayout02:Landroid/widget/RelativeLayout;

.field private mVideoSupportLayout03:Landroid/widget/RelativeLayout;

.field private superHighDefinitionTV:Landroid/widget/TextView;

.field private superHighProfileValue:I

.field private superhighDefinition:Landroid/widget/RadioButton;

.field private ultraHighDefinition:Landroid/widget/RadioButton;

.field private ultraHighDefinitionTV:Landroid/widget/TextView;

.field private ultraHighProfileValue:I

.field private wechatButton:Landroid/widget/RadioButton;

.field private wechatTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V
    .locals 3
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .param p2, "mOnPopViewCheckChanged"    # Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;-><init>()V

    .line 28
    const/16 v1, 0x14

    iput v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighProfileValue:I

    .line 33
    const/16 v1, 0x13

    iput v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superHighProfileValue:I

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mRadioButtons:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 77
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .line 79
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    .line 81
    .local v0, "mCameraActivity":Lcom/lenovo/scg/camera/CameraActivity;
    if-eqz v0, :cond_2

    .line 83
    invoke-static {}, Lcom/lenovo/scg/camera/CameraConfig;->isRowVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    const v1, 0x7f100247

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

    .line 91
    :goto_0
    invoke-static {}, Lcom/lenovo/scg/camera/CameraConfig;->isRowVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    const v1, 0x7f10027f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    .line 93
    const v1, 0x7f100281

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    .line 94
    const v1, 0x7f100283

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    .line 95
    const v1, 0x7f100285

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    .line 110
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/CameraConfig;->isRowVersion()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 132
    const v1, 0x7f10024b

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinitionTV:Landroid/widget/TextView;

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinitionTV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 135
    const v1, 0x7f10024a

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHighDefinitionTV:Landroid/widget/TextView;

    .line 136
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHighDefinitionTV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 141
    const v1, 0x7f100249

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superHighDefinitionTV:Landroid/widget/TextView;

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superHighDefinitionTV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 144
    const v1, 0x7f100248

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinitionTV:Landroid/widget/TextView;

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinitionTV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 171
    :goto_2
    const v1, 0x7f10024f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mVideoSupportLayout01:Landroid/widget/RelativeLayout;

    .line 173
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mVideoSupportLayout01:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 175
    const v1, 0x7f100252

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mVideoSupportLayout02:Landroid/widget/RelativeLayout;

    .line 177
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mVideoSupportLayout02:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 180
    const v1, 0x7f100256

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mVideoSupportLayout03:Landroid/widget/RelativeLayout;

    .line 182
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mVideoSupportLayout03:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 183
    return-void

    .line 86
    :cond_3
    const v1, 0x7f10024c

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

    goto/16 :goto_0

    .line 97
    :cond_4
    const v1, 0x7f10027c

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    .line 98
    const v1, 0x7f10027b

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    .line 100
    const v1, 0x7f100278

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    .line 101
    sget-boolean v1, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-eqz v1, :cond_5

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    const v2, 0x7f0204fd

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 104
    :cond_5
    const v1, 0x7f10027a

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    .line 105
    const v1, 0x7f100279

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    goto/16 :goto_1

    .line 148
    :cond_6
    const v1, 0x7f100255

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinitionTV:Landroid/widget/TextView;

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinitionTV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 151
    const v1, 0x7f100251

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHighDefinitionTV:Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHighDefinitionTV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 154
    const v1, 0x7f100259

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatTV:Landroid/widget/TextView;

    .line 155
    sget-boolean v1, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-eqz v1, :cond_7

    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatTV:Landroid/widget/TextView;

    const v2, 0x7f0f01ff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 158
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatTV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 160
    const v1, 0x7f10024e

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superHighDefinitionTV:Landroid/widget/TextView;

    .line 161
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superHighDefinitionTV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 163
    const v1, 0x7f10024d

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinitionTV:Landroid/widget/TextView;

    .line 164
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinitionTV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->rotateView(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method private rotateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 189
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 190
    return-void
.end method


# virtual methods
.method public getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .locals 6
    .param p1, "radioButtonID"    # I

    .prologue
    const v5, 0x7f0f01df

    const v4, 0x7f020056

    const v3, 0x7f020055

    const v2, 0x7f020053

    const v1, 0x7f020052

    .line 368
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;)V

    .line 369
    .local v0, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    packed-switch p1, :pswitch_data_0

    .line 429
    :goto_0
    :pswitch_0
    return-object v0

    .line 371
    :pswitch_1
    sget-boolean v1, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-eqz v1, :cond_0

    .line 372
    const v1, 0x7f020054

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 373
    const v1, 0x7f0f01ff

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 375
    :cond_0
    const v1, 0x7f020057

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 376
    const v1, 0x7f0f01e3

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 383
    :pswitch_2
    iput v4, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 384
    const v1, 0x7f0f01e1

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 389
    :pswitch_3
    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 390
    const v1, 0x7f0f01e2

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 395
    :pswitch_4
    iput v2, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 396
    const v1, 0x7f0f01e0

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 400
    :pswitch_5
    iput v3, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 401
    iput v5, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 407
    :pswitch_6
    iput v4, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 408
    const v1, 0x7f0f01e1

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 413
    :pswitch_7
    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 414
    const v1, 0x7f0f01e2

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 419
    :pswitch_8
    iput v2, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 420
    const v1, 0x7f0f01e0

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 424
    :pswitch_9
    iput v3, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 425
    iput v5, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x7f100278
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getSettingTypeByRadioButton(I)V
    .locals 0
    .param p1, "radioButtonID"    # I

    .prologue
    .line 361
    return-void
.end method

.method public getSettingValueByRadioButton(I)Ljava/lang/String;
    .locals 1
    .param p1, "radioButtonID"    # I

    .prologue
    .line 437
    packed-switch p1, :pswitch_data_0

    .line 479
    :pswitch_0
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_1080P:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 439
    :pswitch_1
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-eqz v0, :cond_0

    .line 441
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720x480:Ljava/lang/String;

    goto :goto_0

    .line 443
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_QVGA:Ljava/lang/String;

    goto :goto_0

    .line 447
    :pswitch_2
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720P:Ljava/lang/String;

    goto :goto_0

    .line 451
    :pswitch_3
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_1080P:Ljava/lang/String;

    goto :goto_0

    .line 455
    :pswitch_4
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_2K:Ljava/lang/String;

    goto :goto_0

    .line 458
    :pswitch_5
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_4K:Ljava/lang/String;

    goto :goto_0

    .line 464
    :pswitch_6
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720P:Ljava/lang/String;

    goto :goto_0

    .line 468
    :pswitch_7
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_1080P:Ljava/lang/String;

    goto :goto_0

    .line 472
    :pswitch_8
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_2K:Ljava/lang/String;

    goto :goto_0

    .line 475
    :pswitch_9
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_4K:Ljava/lang/String;

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0x7f100278
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 215
    if-eqz p2, :cond_2

    .line 216
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 217
    .local v0, "checkedid":I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->getSettingValueByRadioButton(I)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "mSettingValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v6, "camera_setting_video_quality_key"

    invoke-interface {v5, v6, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v5, "TakePicTypePopViewUI"

    const-string/jumbo v6, "onCheckedChanged()================="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 222
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 223
    .local v2, "mButton":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 224
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 226
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v2    # "mButton":Landroid/widget/RadioButton;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    move-result-object v3

    .line 230
    .local v3, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    iget v6, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    iget v7, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    invoke-interface {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;->onPopViewCheckedChanged(II)V

    .line 232
    .end local v0    # "checkedid":I
    .end local v1    # "i":I
    .end local v3    # "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .end local v4    # "mSettingValue":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public selectRadioButton(Ljava/lang/String;)V
    .locals 8
    .param p1, "takePicType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    .line 235
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 236
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 237
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 242
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 244
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_video_type_key"

    const-string/jumbo v3, "normal"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "videoType":Ljava/lang/String;
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 247
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 248
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 249
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 253
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 256
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 257
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 261
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 264
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinitionTV:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 266
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHighDefinitionTV:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 268
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatTV:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 269
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatTV:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superHighDefinitionTV:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 273
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinitionTV:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 302
    :goto_0
    sget-object v1, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_4K:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 303
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 304
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 305
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_4

    .line 306
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 309
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 310
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 345
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 346
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 347
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_6

    .line 348
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 351
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 352
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 354
    return-void

    .line 276
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 277
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 278
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_8

    .line 279
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 281
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 282
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 283
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinitionTV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 284
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHighDefinitionTV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 286
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatTV:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 287
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatTV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 289
    :cond_9
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superHighDefinitionTV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 290
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinitionTV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 292
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 293
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 294
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_a

    .line 295
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 297
    :cond_a
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 298
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setAlpha(F)V

    goto/16 :goto_0

    .line 311
    :cond_b
    sget-object v1, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_QVGA:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720x480:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 313
    :cond_c
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 314
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 315
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_d

    .line 316
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 318
    :cond_d
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 319
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto/16 :goto_1

    .line 320
    :cond_e
    sget-object v1, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_1080P:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 321
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 322
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 323
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_f

    .line 324
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 326
    :cond_f
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 327
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto/16 :goto_1

    .line 328
    :cond_10
    sget-object v1, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_2K:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 329
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 330
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 331
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_11

    .line 332
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 334
    :cond_11
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 335
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto/16 :goto_1

    .line 336
    :cond_12
    sget-object v1, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720P:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 337
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->ultraHighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 338
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->superhighDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 339
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_13

    .line 340
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->wechatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 342
    :cond_13
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->fullHightDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 343
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->highDefinition:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto/16 :goto_1
.end method

.method public setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V
    .locals 5
    .param p1, "mSettingItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .param p2, "mSettingValue"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0204ff

    .line 488
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_video_type_key"

    const-string/jumbo v3, "normal"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "videoType":Ljava/lang/String;
    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 490
    invoke-virtual {p1, v4}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    sget-object v1, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720P:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    invoke-virtual {p1, v4}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 496
    :cond_2
    sget-object v1, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_1080P:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 497
    const v1, 0x7f0204fe

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 498
    :cond_3
    sget-object v1, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_QVGA:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 499
    const v1, 0x7f020502

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 500
    :cond_4
    sget-object v1, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720x480:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 501
    const v1, 0x7f0204fd

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 502
    :cond_5
    sget-object v1, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_2K:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 503
    const v1, 0x7f020500

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 504
    :cond_6
    sget-object v1, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_4K:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    const v1, 0x7f020501

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0
.end method

.method public updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V
    .locals 5
    .param p1, "mItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .prologue
    const/4 v4, 0x0

    .line 193
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_video_quality_key"

    sget-object v3, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720P:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
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

    .line 196
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->updatePopViewNameVisibility(I)V

    .line 198
    return-void
.end method

.method public updatePopViewNameVisibility(I)V
    .locals 1
    .param p1, "mVisibility"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 210
    return-void
.end method
