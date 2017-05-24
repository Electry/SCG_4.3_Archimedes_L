.class Lcom/lenovo/scg/gallery3d/ui/RemindDialog$1;
.super Ljava/lang/Object;
.source "RemindDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 70
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
