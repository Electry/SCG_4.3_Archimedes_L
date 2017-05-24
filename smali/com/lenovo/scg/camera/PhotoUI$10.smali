.class Lcom/lenovo/scg/camera/PhotoUI$10;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PhotoUI;->addAboutView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoUI;)V
    .locals 0

    .prologue
    .line 2446
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoUI$10;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2450
    const-string v0, "CAM_UI"

    const-string v1, "addAboutView, horizon about on click"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$10;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # invokes: Lcom/lenovo/scg/camera/PhotoUI;->clickAboutView()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$1300(Lcom/lenovo/scg/camera/PhotoUI;)V

    .line 2452
    return-void
.end method
