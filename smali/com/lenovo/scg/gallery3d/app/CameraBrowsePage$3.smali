.class Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$3;
.super Ljava/lang/Object;
.source "CameraBrowsePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
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
    .line 432
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$3;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$3;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->backLastView()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$900(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V

    .line 437
    return-void
.end method
