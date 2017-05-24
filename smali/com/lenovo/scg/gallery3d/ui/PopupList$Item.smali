.class public Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;
.super Ljava/lang/Object;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public final id:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;->id:I

    .line 53
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;->title:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PopupList$Item;->title:Ljava/lang/String;

    .line 58
    return-void
.end method
