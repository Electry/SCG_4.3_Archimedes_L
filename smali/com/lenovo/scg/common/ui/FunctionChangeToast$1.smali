.class Lcom/lenovo/scg/common/ui/FunctionChangeToast$1;
.super Ljava/lang/Object;
.source "FunctionChangeToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/ui/FunctionChangeToast;->startShowAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/ui/FunctionChangeToast;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/ui/FunctionChangeToast;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast$1;->this$0:Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/FunctionChangeToast$1;->this$0:Lcom/lenovo/scg/common/ui/FunctionChangeToast;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/FunctionChangeToast;->startShowAnim()V

    .line 147
    return-void
.end method
