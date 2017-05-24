.class public abstract Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;
.super Lcom/lenovo/scg/camera/ui/RotateLayout;
.source "AbstractSettingPopup.java"


# instance fields
.field protected mSettingList:Landroid/view/ViewGroup;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->onFinishInflate()V

    .line 41
    const v0, 0x7f10005a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f100634

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    .line 43
    return-void
.end method

.method public abstract reloadPreference()V
.end method
