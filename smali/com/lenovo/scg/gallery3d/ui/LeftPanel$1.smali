.class Lcom/lenovo/scg/gallery3d/ui/LeftPanel$1;
.super Ljava/lang/Object;
.source "LeftPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->setBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LeftPanel;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LeftPanel$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/LeftPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LeftPanel;->togglePanel()V

    .line 75
    return-void
.end method
