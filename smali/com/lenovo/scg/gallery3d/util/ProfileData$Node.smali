.class Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;
.super Ljava/lang/Object;
.source "ProfileData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/util/ProfileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public parent:Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

.field public sampleCount:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;I)V
    .locals 0
    .param p1, "parent"    # Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;
    .param p2, "id"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->parent:Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;

    .line 50
    iput p2, p0, Lcom/lenovo/scg/gallery3d/util/ProfileData$Node;->id:I

    .line 51
    return-void
.end method
