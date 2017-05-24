.class public Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;
.super Landroid/app/Activity;
.source "SettingDefaultPageActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mGallerySettingPreferences:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

.field private mPageByFileLayout:Landroid/widget/RadioButton;

.field private mPageByTimeLayout:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 44
    const v0, 0x7f10089e

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->mPageByTimeLayout:Landroid/widget/RadioButton;

    .line 45
    const v0, 0x7f10089f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->mPageByFileLayout:Landroid/widget/RadioButton;

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->mGallerySettingPreferences:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getDefaultPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->switchBtnState(I)V

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->mPageByTimeLayout:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->mPageByFileLayout:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    const v0, 0x7f100896

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method private switchBtnState(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    const/4 v1, 0x1

    .line 61
    if-nez p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->mPageByTimeLayout:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 66
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->mGallerySettingPreferences:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->setDefaultPage(I)V

    .line 67
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->mPageByFileLayout:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 85
    if-eqz p2, :cond_1

    .line 86
    const v0, 0x7f10089e

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->switchBtnState(I)V

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->finish()V

    .line 93
    :cond_1
    return-void

    .line 88
    :cond_2
    const v0, 0x7f10089f

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 89
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->switchBtnState(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->requestWindowFeature(I)Z

    .line 36
    const v0, 0x7f040172

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->mGallerySettingPreferences:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    .line 39
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->initView()V

    .line 40
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 41
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 73
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->exitPictureQualityMode()V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->enterPictureQualityMode()V

    .line 81
    return-void
.end method
