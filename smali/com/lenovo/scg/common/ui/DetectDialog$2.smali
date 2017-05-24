.class Lcom/lenovo/scg/common/ui/DetectDialog$2;
.super Ljava/lang/Object;
.source "DetectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/ui/DetectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/ui/DetectDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/ui/DetectDialog;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/DetectDialog$2;->this$0:Lcom/lenovo/scg/common/ui/DetectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 61
    :pswitch_0
    sget-object v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->UNLENOVO:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog$2;->this$0:Lcom/lenovo/scg/common/ui/DetectDialog;

    # getter for: Lcom/lenovo/scg/common/ui/DetectDialog;->mType:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;
    invoke-static {v1}, Lcom/lenovo/scg/common/ui/DetectDialog;->access$000(Lcom/lenovo/scg/common/ui/DetectDialog;)Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->WRONGVER:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/DetectDialog$2;->this$0:Lcom/lenovo/scg/common/ui/DetectDialog;

    # getter for: Lcom/lenovo/scg/common/ui/DetectDialog;->mType:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;
    invoke-static {v1}, Lcom/lenovo/scg/common/ui/DetectDialog;->access$000(Lcom/lenovo/scg/common/ui/DetectDialog;)Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog$2;->this$0:Lcom/lenovo/scg/common/ui/DetectDialog;

    # invokes: Lcom/lenovo/scg/common/ui/DetectDialog;->putBooleanToPreferences()V
    invoke-static {v0}, Lcom/lenovo/scg/common/ui/DetectDialog;->access$100(Lcom/lenovo/scg/common/ui/DetectDialog;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog$2;->this$0:Lcom/lenovo/scg/common/ui/DetectDialog;

    # getter for: Lcom/lenovo/scg/common/ui/DetectDialog;->mBetrueRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/lenovo/scg/common/ui/DetectDialog;->access$200(Lcom/lenovo/scg/common/ui/DetectDialog;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog$2;->this$0:Lcom/lenovo/scg/common/ui/DetectDialog;

    # getter for: Lcom/lenovo/scg/common/ui/DetectDialog;->mBetrueRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/lenovo/scg/common/ui/DetectDialog;->access$200(Lcom/lenovo/scg/common/ui/DetectDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/DetectDialog$2;->this$0:Lcom/lenovo/scg/common/ui/DetectDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/DetectDialog;->dismiss()V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x7f100406
        :pswitch_0
    .end packed-switch
.end method
