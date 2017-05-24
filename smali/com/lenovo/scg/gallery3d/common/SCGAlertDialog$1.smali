.class Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$1;
.super Ljava/lang/Object;
.source "SCGAlertDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->setItem([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

.field final synthetic val$l:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$1;->val$l:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$1;->val$l:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->mBuilder:Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog$LeAlertBuilder;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 200
    return-void
.end method
