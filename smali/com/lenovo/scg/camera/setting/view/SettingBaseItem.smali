.class public Lcom/lenovo/scg/camera/setting/view/SettingBaseItem;
.super Ljava/lang/Object;
.source "SettingBaseItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;
    }
.end annotation


# instance fields
.field private mImageResID:I

.field private mPopViewLayoutID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem;->mPopViewLayoutID:I

    .line 26
    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem;->mImageResID:I

    .line 36
    return-void
.end method


# virtual methods
.method public getmImageResID()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem;->mImageResID:I

    return v0
.end method

.method public getmPopViewLayoutID()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem;->mPopViewLayoutID:I

    return v0
.end method

.method public setmImageResID(I)V
    .locals 0
    .param p1, "mImageResID"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem;->mImageResID:I

    .line 34
    return-void
.end method

.method public setmPopViewLayoutID(I)V
    .locals 0
    .param p1, "mPopViewLayoutID"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem;->mPopViewLayoutID:I

    .line 24
    return-void
.end method
