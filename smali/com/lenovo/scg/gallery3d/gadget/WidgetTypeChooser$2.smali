.class Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser$2;
.super Ljava/lang/Object;
.source "WidgetTypeChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser$2;->this$0:Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser$2;->this$0:Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;->setResult(I)V

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser$2;->this$0:Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;->finish()V

    .line 57
    return-void
.end method
