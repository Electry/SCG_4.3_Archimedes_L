.class public abstract Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;
.super Ljava/lang/Object;
.source "BaseAutoSettingUI.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public abstract getSettingCommentByRadioButton(I)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
.end method

.method public abstract getSettingTypeByRadioButton(I)V
.end method

.method public abstract getSettingValueByRadioButton(I)Ljava/lang/String;
.end method

.method public abstract selectRadioButton(Ljava/lang/String;)V
.end method

.method public abstract setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V
.end method

.method public abstract updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V
.end method

.method public abstract updatePopViewNameVisibility(I)V
.end method
