.class public Lcom/lenovo/scg/gallery3d/util/Holder;
.super Ljava/lang/Object;
.source "Holder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/Holder;, "Lcom/lenovo/scg/gallery3d/util/Holder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/Holder;, "Lcom/lenovo/scg/gallery3d/util/Holder<TT;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/Holder;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/Holder;, "Lcom/lenovo/scg/gallery3d/util/Holder<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/util/Holder;->mObject:Ljava/lang/Object;

    .line 25
    return-void
.end method
