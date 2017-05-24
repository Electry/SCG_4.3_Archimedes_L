.class public Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;
.super Landroid/widget/GridView;
.source "IngestGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;
    }
.end annotation


# instance fields
.field private mOnClearChoicesListener:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->mOnClearChoicesListener:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->mOnClearChoicesListener:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->mOnClearChoicesListener:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;

    .line 46
    return-void
.end method


# virtual methods
.method public clearChoices()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/GridView;->clearChoices()V

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->mOnClearChoicesListener:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->mOnClearChoicesListener:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;->onClearChoices()V

    .line 58
    :cond_0
    return-void
.end method

.method public setOnClearChoicesListener(Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->mOnClearChoicesListener:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;

    .line 50
    return-void
.end method
