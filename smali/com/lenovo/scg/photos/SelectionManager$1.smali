.class Lcom/lenovo/scg/photos/SelectionManager$1;
.super Ljava/lang/Object;
.source "SelectionManager.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/photos/SelectionManager;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/SelectionManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/SelectionManager;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/photos/SelectionManager$1;->this$0:Lcom/lenovo/scg/photos/SelectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 2
    .param p1, "arg0"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/photos/SelectionManager$1;->this$0:Lcom/lenovo/scg/photos/SelectionManager;

    # getter for: Lcom/lenovo/scg/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/photos/SelectionManager;->access$000(Lcom/lenovo/scg/photos/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/SelectionManager$1;->this$0:Lcom/lenovo/scg/photos/SelectionManager;

    # getter for: Lcom/lenovo/scg/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/photos/SelectionManager;->access$000(Lcom/lenovo/scg/photos/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/photos/SelectionManager$1;->this$0:Lcom/lenovo/scg/photos/SelectionManager;

    # getter for: Lcom/lenovo/scg/photos/SelectionManager;->mCachedShareableUris:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/photos/SelectionManager;->access$000(Lcom/lenovo/scg/photos/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    goto :goto_0
.end method
