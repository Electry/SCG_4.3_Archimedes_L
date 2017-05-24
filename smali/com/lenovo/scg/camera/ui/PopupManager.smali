.class public Lcom/lenovo/scg/camera/ui/PopupManager;
.super Ljava/lang/Object;
.source "PopupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/PopupManager$OnOtherPopupShowedListener;
    }
.end annotation


# static fields
.field private static sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/lenovo/scg/camera/ui/PopupManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/ui/PopupManager$OnOtherPopupShowedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PopupManager;->mListeners:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/ui/PopupManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-class v2, Lcom/lenovo/scg/camera/ui/PopupManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/lenovo/scg/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/PopupManager;

    .line 57
    .local v0, "instance":Lcom/lenovo/scg/camera/ui/PopupManager;
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/lenovo/scg/camera/ui/PopupManager;

    .end local v0    # "instance":Lcom/lenovo/scg/camera/ui/PopupManager;
    invoke-direct {v0}, Lcom/lenovo/scg/camera/ui/PopupManager;-><init>()V

    .line 59
    .restart local v0    # "instance":Lcom/lenovo/scg/camera/ui/PopupManager;
    sget-object v1, Lcom/lenovo/scg/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit v2

    return-object v0

    .line 56
    .end local v0    # "instance":Lcom/lenovo/scg/camera/ui/PopupManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v1, Lcom/lenovo/scg/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/PopupManager;

    .line 66
    .local v0, "instance":Lcom/lenovo/scg/camera/ui/PopupManager;
    sget-object v1, Lcom/lenovo/scg/camera/ui/PopupManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public notifyShowPopup(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PopupManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/PopupManager$OnOtherPopupShowedListener;

    .local v1, "listener":Lcom/lenovo/scg/camera/ui/PopupManager$OnOtherPopupShowedListener;
    move-object v2, v1

    .line 45
    check-cast v2, Landroid/view/View;

    if-eq v2, p1, :cond_0

    .line 46
    invoke-interface {v1}, Lcom/lenovo/scg/camera/ui/PopupManager$OnOtherPopupShowedListener;->onOtherPopupShowed()V

    goto :goto_0

    .line 49
    .end local v1    # "listener":Lcom/lenovo/scg/camera/ui/PopupManager$OnOtherPopupShowedListener;
    :cond_1
    return-void
.end method

.method public setOnOtherPopupShowedListener(Lcom/lenovo/scg/camera/ui/PopupManager$OnOtherPopupShowedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/PopupManager$OnOtherPopupShowedListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PopupManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
