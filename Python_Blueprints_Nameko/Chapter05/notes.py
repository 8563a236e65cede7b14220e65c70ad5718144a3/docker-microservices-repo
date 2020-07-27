"""
Building a Web Messenger with Microservices

    Requirements
        A user can go to a website and send messages
        A user can see messages that others have sent
        Messages automatically expire after a configurable amount of
        time

    What is Nameko
        Nameko is an open-source framework used for building
        microservices in Python. Using Nameko, you can create
        microservices that communicate with each other using
        RPC (Remote Procedure Calls) via AMQP (Advanced Message
        Queueing Protocol)

    RPCs
        RPC stands for Remote Procedure Call
        Single Responsibility Principle - A Class should have only
        one reason to change
        We aim to keep our microservices self-contained and cohesive
        RPCs do have downsides, main one being that it can be hard to
        see when a call is remote. One could make unnecessary remote
        calls without realizing it, which can be expensive since they
        go over the network and use external resources
        When using RPCs, it's import to make them visibly different

    How Nameko uses AMQP
        AMQP stands for Advanced Messaging Queueing Protocol, which
        is used by Nameko as the transport for our RPCs. When Nameko
        services make RPCs to each other, the requests are placed
        on the messaging queue, which are then consumed by the
        destination service.

        Nameko services use workers to consume and carry out the task.
        Once it's complete, it dies. Since there can be multiple
        workers executing tasks simultaneously, Nameko can scale up
        to the amount of workers it has available. If all workers are
        exhausted, then messages will stay on the queue until a free
        worker is avaialble.

        You can also scale Nameko horizontally by increasing the amount
        of instances running your service. This is known as clustering,
        which is also where the name Nameko originates, since
        Nameko mushrooms grow in clusters.

        Nameko can also respond to requests from other protocols such
        as HTTP and websockets

    RabbitMQ
        RabbitMQ is used as the message broker for Nameko and allows it
        to utilize AMQP.
"""