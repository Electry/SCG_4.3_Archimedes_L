.class public Lcom/lenovo/scg/camera/memento/FlashMemento;
.super Ljava/lang/Object;
.source "FlashMemento.java"

# interfaces
.implements Lcom/lenovo/scg/camera/memento/Memento;


# instance fields
.field private mCurrentState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/memento/FlashMemento;->mCurrentState:Ljava/lang/String;

    return-object v0
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/lenovo/scg/camera/memento/FlashMemento;->mCurrentState:Ljava/lang/String;

    .line 13
    return-void
.end method
