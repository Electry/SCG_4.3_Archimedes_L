.class public abstract Lcom/lenovo/scg/camera/ui/InLineSettingItem;
.super Landroid/widget/LinearLayout;
.source "InLineSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/InLineSettingItem$Listener;
    }
.end annotation


# instance fields
.field protected mIndex:I

.field private mListener:Lcom/lenovo/scg/camera/ui/InLineSettingItem$Listener;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected changeIndex(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 76
    :cond_1
    iput p1, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mIndex:I

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setValueIndex(I)V

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mListener:Lcom/lenovo/scg/camera/ui/InLineSettingItem$Listener;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mListener:Lcom/lenovo/scg/camera/ui/InLineSettingItem$Listener;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/ui/InLineSettingItem$Listener;->onSettingChanged(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->updateView()V

    .line 82
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->sendAccessibilityEvent(I)V

    .line 83
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initialize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->setTitle(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 67
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .line 69
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->reloadPreference()V

    goto :goto_0
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->updateView()V

    .line 99
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mIndex:I

    .line 89
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->updateView()V

    .line 90
    return-void
.end method

.method public setSettingChangedListener(Lcom/lenovo/scg/camera/ui/InLineSettingItem$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/InLineSettingItem$Listener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mListener:Lcom/lenovo/scg/camera/ui/InLineSettingItem$Listener;

    .line 94
    return-void
.end method

.method protected setTitle(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V
    .locals 2
    .param p1, "preference"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .prologue
    .line 61
    const v0, 0x7f10005a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method protected abstract updateView()V
.end method
