.class public Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;
.super Lcom/lenovo/scg/camera/ui/InLineSettingItem;
.source "InLineSettingCheckBox.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox$1;-><init>(Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 44
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V
    .locals 6
    .param p1, "preference"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->initialize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0573

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->onFinishInflate()V

    .line 49
    const v0, 0x7f100619

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 82
    :cond_1
    return-void
.end method

.method protected updateView()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mOverrideValue:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    iget v4, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mIndex:I

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    return-void

    :cond_0
    move v1, v2

    .line 64
    goto :goto_0

    .line 66
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "index":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/InLineSettingCheckBox;->mCheckBox:Landroid/widget/CheckBox;

    if-ne v0, v1, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
