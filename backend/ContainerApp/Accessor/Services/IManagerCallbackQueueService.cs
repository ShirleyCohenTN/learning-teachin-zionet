namespace Accessor.Services;

public interface IManagerCallbackQueueService
{
    Task PublishToManagerCallbackAsync<T>(T message, Dictionary<string, string> metadata, CancellationToken ct = default);
}