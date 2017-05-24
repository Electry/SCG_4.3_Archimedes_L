.class public abstract Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;
.super Ljava/lang/Object;
.source "MiniCameraPlatformSupportManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDefaultImplementation:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mManagedInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;, "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager<TT;>;"
    .local p1, "managedInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "defaultImplementation":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;->mManagedInterface:Ljava/lang/Class;

    .line 72
    iput-object p2, p0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;->mDefaultImplementation:Ljava/lang/Object;

    .line 74
    return-void
.end method


# virtual methods
.method public final build()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;, "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager<TT;>;"
    sget-object v0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using default implementation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;->mDefaultImplementation:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;->mManagedInterface:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraPlatformSupportManager;->mDefaultImplementation:Ljava/lang/Object;

    return-object v0
.end method
