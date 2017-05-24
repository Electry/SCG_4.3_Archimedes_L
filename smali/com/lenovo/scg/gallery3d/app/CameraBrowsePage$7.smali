.class Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$7;
.super Ljava/lang/Object;
.source "CameraBrowsePage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->showDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$7;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$7;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->hideDetails()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$1800(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V

    .line 746
    return-void
.end method
