.class public Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;
.super Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;
.source "PictureSizeTypeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI$PictureSize;
    }
.end annotation


# static fields
.field public static final SIZE16x9:Ljava/lang/String; = "16x9"

.field public static final SIZE4x3:Ljava/lang/String; = "4x3"

.field private static final TAG:Ljava/lang/String; = "PictureSizeTypeUI"


# instance fields
.field private m16v9TV:Landroid/widget/TextView;

.field private m16x9RadioButton:Landroid/widget/RadioButton;

.field private m1v1TV:Landroid/widget/TextView;

.field private m1x1RadioButton:Landroid/widget/RadioButton;

.field private m4v3TV:Landroid/widget/TextView;

.field private m4x3RadioButton:Landroid/widget/RadioButton;

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


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V
    .locals 3
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .param p2, "mOnPopViewCheckChanged"    # Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;-><init>()V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mRadioButtons:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 60
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    .line 61
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    .line 63
    .local v0, "mCameraActivity":Lcom/lenovo/scg/camera/CameraActivity;
    if-eqz v0, :cond_0

    .line 65
    const v1, 0x7f10023d

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

    .line 67
    const v1, 0x7f1001aa

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m16x9RadioButton:Landroid/widget/RadioButton;

    .line 68
    const v1, 0x7f1001ab

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m4x3RadioButton:Landroid/widget/RadioButton;

    .line 69
    const v1, 0x7f1001ad

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    .line 71
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m16x9RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m4x3RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 77
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m16x9RadioButton:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m4x3RadioButton:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mRadioButtons:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    const v1, 0x7f10023e

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m16v9TV:Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m16v9TV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 85
    const v1, 0x7f10023f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m4v3TV:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m4v3TV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 88
    const v1, 0x7f100240

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1v1TV:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1v1TV:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->rotateView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method private rotateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 96
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 97
    return-void
.end method


# virtual methods
.method public getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    .locals 2
    .param p1, "radioButtonID"    # I

    .prologue
    const v1, 0x7f020046

    .line 205
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;)V

    .line 206
    .local v0, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    packed-switch p1, :pswitch_data_0

    .line 225
    :goto_0
    :pswitch_0
    return-object v0

    .line 208
    :pswitch_1
    const v1, 0x7f020044

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 209
    const v1, 0x7f0f0a5d

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 214
    :pswitch_2
    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 215
    const v1, 0x7f0f0a5e

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 220
    :pswitch_3
    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 221
    const v1, 0x7f0f0a5f

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001aa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getSettingTypeByRadioButton(I)V
    .locals 0
    .param p1, "radioButtonID"    # I

    .prologue
    .line 198
    return-void
.end method

.method public getSettingValueByRadioButton(I)Ljava/lang/String;
    .locals 1
    .param p1, "radioButtonID"    # I

    .prologue
    .line 234
    packed-switch p1, :pswitch_data_0

    .line 244
    const-string v0, "16x9"

    :goto_0
    return-object v0

    .line 236
    :pswitch_0
    const-string v0, "16x9"

    goto :goto_0

    .line 240
    :pswitch_1
    const-string v0, "4x3"

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x7f1001aa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 165
    if-eqz p2, :cond_4

    .line 166
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 168
    .local v0, "checkedid":I
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v6

    const v7, 0x7f1001ad

    if-ne v6, v7, :cond_2

    .line 169
    if-eqz p2, :cond_1

    const-string/jumbo v5, "on"

    .line 170
    .local v5, "value":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v7, "camera_setting_square_pic_key"

    invoke-interface {v6, v7, v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v5    # "value":Ljava/lang/String;
    :goto_1
    const-string v6, "PictureSizeTypeUI"

    const-string/jumbo v7, "onCheckedChanged()================="

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 180
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mRadioButtons:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 181
    .local v2, "mButton":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v6

    if-eq v6, v0, :cond_0

    .line 182
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 184
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 169
    .end local v1    # "i":I
    .end local v2    # "mButton":Landroid/widget/RadioButton;
    :cond_1
    const-string/jumbo v5, "off"

    goto :goto_0

    .line 172
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v7, "camera_setting_square_pic_key"

    const-string/jumbo v8, "off"

    invoke-interface {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->getSettingValueByRadioButton(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "mSettingValue":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v7, "camera_setting_picture_size_key"

    invoke-interface {v6, v7, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 187
    .end local v4    # "mSettingValue":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;

    move-result-object v3

    .line 188
    .local v3, "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mOnChanged:Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;

    iget v7, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    iget v8, v3, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    invoke-interface {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;->onPopViewCheckedChanged(II)V

    .line 190
    .end local v0    # "checkedid":I
    .end local v1    # "i":I
    .end local v3    # "mCommon":Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    :cond_4
    return-void
.end method

.method public selectRadioButton(Ljava/lang/String;)V
    .locals 8
    .param p1, "mPicSize"    # Ljava/lang/String;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m16x9RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m4x3RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_square_pic_key"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "squarePic":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m16x9RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m4x3RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 132
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m16x9RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m4x3RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v2, :cond_3

    .line 137
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1v1TV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 148
    :goto_1
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 123
    const-string v1, "16x9"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m16x9RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 125
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m4x3RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 126
    :cond_2
    const-string v1, "4x3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m16x9RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 128
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m4x3RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 144
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1x1RadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->m1v1TV:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method

.method public setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V
    .locals 4
    .param p1, "mSettingItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .param p2, "mSettingValue"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_square_pic_key"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "squarePic":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    const v1, 0x7f0204cc

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v1, "16x9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    const v1, 0x7f0204c9

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0

    .line 261
    :cond_2
    const-string v1, "4x3"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const v1, 0x7f0204cf

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    goto :goto_0
.end method

.method public updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V
    .locals 5
    .param p1, "mItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PIC_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v1, v2, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_picture_size_key"

    const-string v3, "16x9"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "mPicSize":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->updatePopViewNameVisibility(I)V

    .line 106
    .end local v0    # "mPicSize":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updatePopViewNameVisibility(I)V
    .locals 1
    .param p1, "mVisibility"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->mLittleAutoWheelPicType:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 160
    return-void
.end method
