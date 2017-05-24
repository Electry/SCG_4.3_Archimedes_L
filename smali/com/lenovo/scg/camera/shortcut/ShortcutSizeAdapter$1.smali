.class Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter$1;
.super Ljava/lang/Object;
.source "ShortcutSizeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    const-string v0, "ShortcutSizeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item click : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mAllValues:[Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->access$000(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "1x1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    # invokes: Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->changeSizeTo1_1()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)V

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    move-result-object v0

    const-string/jumbo v1, "size"

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;->hideBigPanel(Ljava/lang/String;)V

    .line 118
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mAllValues:[Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->access$000(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    # invokes: Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->changeSizeTo16_9()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->access$200(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->mAllValues:[Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->access$000(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    # invokes: Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->changeSizeTo4_3()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;->access$300(Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;)V

    goto :goto_0
.end method
