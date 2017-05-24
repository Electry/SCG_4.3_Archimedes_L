.class Lcom/lenovo/scg/camera/front/FrontView$4;
.super Ljava/lang/Object;
.source "FrontView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/FrontView;->initPhotoFunctionButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/FrontView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontView;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView$4;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 507
    const-string v0, "FrontView"

    const-string v1, "mPhotoFunctionButton click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView$4;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontView;->initPhotoFunctionPanel()V

    .line 509
    return-void
.end method
