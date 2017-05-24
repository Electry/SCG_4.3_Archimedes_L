.class Lcom/lenovo/scg/camera/setting/view/ActionListener$2;
.super Ljava/lang/Object;
.source "ActionListener.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/setting/view/ActionListener;->registerClickListener(Landroid/view/View;Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/view/ActionListener;

.field final synthetic val$handler:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/view/ActionListener;Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$2;->this$0:Lcom/lenovo/scg/camera/setting/view/ActionListener;

    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$2;->val$handler:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;

    iput-object p3, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$2;->val$handler:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;

    new-instance v1, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/ActionListener$2;->val$view:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;-><init>(Landroid/view/View;)V

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;->CLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->setInputType(Lcom/lenovo/scg/camera/setting/view/ActionListener$InputType;)Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;->LONGCLICK:Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->setClickAction(Lcom/lenovo/scg/camera/setting/view/ActionListener$ClickAction;)Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputBuilder;->build()Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/view/ActionListener$InputHandleListener;->handleEvent(Lcom/lenovo/scg/camera/setting/view/ActionListener$Input;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method
