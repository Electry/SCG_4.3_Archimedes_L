.class Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser$1;
.super Ljava/lang/Object;
.source "WidgetTypeChooser.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;
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
    .line 32
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser$1;->this$0:Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 36
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "widget-type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, "data":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser$1;->this$0:Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;->setResult(ILandroid/content/Intent;)V

    .line 38
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser$1;->this$0:Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/gadget/WidgetTypeChooser;->finish()V

    .line 39
    return-void
.end method
