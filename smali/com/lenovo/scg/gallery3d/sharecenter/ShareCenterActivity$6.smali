.class Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$6;
.super Ljava/lang/Object;
.source "ShareCenterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showBadPictureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 569
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 570
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->finish()V

    .line 571
    return-void
.end method
