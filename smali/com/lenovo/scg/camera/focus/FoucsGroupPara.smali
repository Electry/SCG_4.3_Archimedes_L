.class public Lcom/lenovo/scg/camera/focus/FoucsGroupPara;
.super Ljava/lang/Object;
.source "FoucsGroupPara.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

.field private mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;Landroid/content/Context;)V
    .locals 0
    .param p1, "ui"    # Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
    .param p2, "preferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    .line 17
    iput-object p2, p0, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .line 18
    iput-object p3, p0, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->mUI:Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    return-object v0
.end method

.method public getPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    return-object v0
.end method
