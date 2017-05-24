.class Lcom/lenovo/scg/common/ui/TinyTips$1;
.super Ljava/lang/Object;
.source "TinyTips.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/ui/TinyTips;->showTips(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/ui/TinyTips;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/ui/TinyTips;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/TinyTips$1;->this$0:Lcom/lenovo/scg/common/ui/TinyTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/TinyTips$1;->this$0:Lcom/lenovo/scg/common/ui/TinyTips;

    # invokes: Lcom/lenovo/scg/common/ui/TinyTips;->hideTips()V
    invoke-static {v0}, Lcom/lenovo/scg/common/ui/TinyTips;->access$000(Lcom/lenovo/scg/common/ui/TinyTips;)V

    .line 80
    return-void
.end method
