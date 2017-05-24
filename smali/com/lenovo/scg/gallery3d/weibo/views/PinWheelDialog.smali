.class public Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;
.super Landroid/app/Dialog;
.source "PinWheelDialog.java"


# static fields
.field public static mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 20
    return-void
.end method

.method public static getMyDialog(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    const v1, 0x7f0a008c

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;->mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    .line 29
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;->mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    const v1, 0x7f040128

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;->setContentView(I)V

    .line 30
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;->mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;->setCancelable(Z)V

    .line 31
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;->mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    return-object v0
.end method
