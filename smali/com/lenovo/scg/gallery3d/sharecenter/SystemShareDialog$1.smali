.class Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog$1;
.super Ljava/lang/Object;
.source "SystemShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->dismiss()V

    .line 82
    return-void
.end method
