.class public Lcom/lenovo/scg/camera/setting/view/SettingItem;
.super Lcom/lenovo/scg/camera/setting/view/SettingBaseItem;
.source "SettingItem.java"


# instance fields
.field private mLayout:Landroid/widget/RelativeLayout;

.field private mSettingType:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;I)V
    .locals 1
    .param p1, "mType"    # Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;
    .param p2, "imageResID"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingItem;->mSettingType:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 40
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setSettingType(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setmImageResID(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public getRadioButtonLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingItem;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingItem;->mSettingType:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    return-object v0
.end method

.method public setRadioButtonLayout(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "mLayout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/SettingItem;->mLayout:Landroid/widget/RelativeLayout;

    .line 36
    return-void
.end method

.method public setSettingType(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)V
    .locals 0
    .param p1, "mType"    # Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/SettingItem;->mSettingType:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    .line 51
    return-void
.end method
